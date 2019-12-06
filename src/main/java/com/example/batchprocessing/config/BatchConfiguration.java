package com.example.batchprocessing.config;

import com.example.batchprocessing.bean.User;
import com.example.batchprocessing.listener.JobCompletionNotificationListener;
import com.example.batchprocessing.processor.UserItemProcessor;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.batch.MyBatisBatchItemWriter;
import org.mybatis.spring.batch.MyBatisCursorItemReader;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import javax.naming.NamingException;

@Configuration
@EnableBatchProcessing
public class BatchConfiguration {
    @Autowired
    public JobBuilderFactory jobBuilderFactory;
    @Autowired
    public StepBuilderFactory stepBuilderFactory;
//    @Resource
//    private Environment environment;
//        @Resource
//    public SqlSessionFactory sessionFactory;
//    private static SqlSessionFactoryBean sessionFactory;

    //TODO 配置为 environment读取配置文件
    @Bean("dataFromSource")
    public HikariDataSource dataFromSource(){
        HikariDataSource dataSource = new HikariDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setJdbcUrl("jdbc:mysql://127.0.0.1:3306/batch_test?characterEncoding=utf-8&useSSL=false&serverTimezone=UTC");
        dataSource.setUsername("root");
        dataSource.setPassword("your_db_password");
        dataSource.setConnectionTimeout(300000);
        dataSource.setAutoCommit(true);
        dataSource.setIdleTimeout(6000000);
        dataSource.setMaxLifetime(1800000);
        dataSource.setLeakDetectionThreshold(1000000);
        dataSource.setMaximumPoolSize(10);
        return dataSource;
    }

    //事务
    @Bean("dataSourceTransactionManager2")
    public DataSourceTransactionManager dataSourceTransactionManager2()throws NamingException {
        return new DataSourceTransactionManager(dataFromSource());
    }

    //mybatis 的会话工厂
    @Bean(name = "backupSqlSessionFactory")
    public SqlSessionFactoryBean sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataFromSource());
        //mapper文件location
        org.springframework.core.io.Resource[] resources =
                new PathMatchingResourcePatternResolver().getResources(
                        "classpath:mappings/*.xml");
        sessionFactory.setMapperLocations(resources);
        org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();
        configuration.setMapUnderscoreToCamelCase(true);//驼峰转换
        sessionFactory.setConfiguration(configuration);
        return sessionFactory;
    }

    //TODO 可以设定查询参数,使用com.example.batchprocessing.mapper.UserMapper.getUserSelective
    //被 step1 使用
    @Bean
    @StepScope
    public MyBatisCursorItemReader<User> userMybatisReader(@Qualifier("backupSqlSessionFactory") SqlSessionFactory backupSqlSessionFactory) {
        MyBatisCursorItemReader<User> myBatisCursorItemReader = new MyBatisCursorItemReader();
        try {
            myBatisCursorItemReader.setQueryId("com.example.batchprocessing.mapper.UserMapper.getUserList");
            //查询参数,这里不需要,如果有需要,可直接指定用户名称或密码不符合规则的user
            myBatisCursorItemReader.setSqlSessionFactory(backupSqlSessionFactory);
//            Map<String, Object> parameterValues = new HashMap<String, Object>();
//            parameterValues.put("id", 3);
//            myBatisCursorItemReader.setParameterValues(parameterValues);
//            myBatisCursorItemReader.open(new ExecutionContext());
//            parameterValues.put("username",null);
//            parameterValues.put("password",null);
        } catch (Exception e) {
//            System.out.println("the lost user id is: ");
            e.printStackTrace();
        }
        return myBatisCursorItemReader;
    }

    //被 step1 使用
    @Bean
    @StepScope
    public MyBatisBatchItemWriter<User> userMybatisWriter(@Qualifier("backupSqlSessionFactory") SqlSessionFactory backupSqlSessionFactory) {
        MyBatisBatchItemWriter<User> myBatisBatchItemWriter = new MyBatisBatchItemWriter<>();
        myBatisBatchItemWriter.setStatementId("com.example.batchprocessing.mapper.UserCpMapper.addOneUser");
        myBatisBatchItemWriter.setSqlSessionFactory(backupSqlSessionFactory);
        return myBatisBatchItemWriter;
    }

    //被 step1 使用
    @Bean
    public UserItemProcessor userStandardInfoProcessor() {
        return new UserItemProcessor();
    }

    @Bean
    public Job thisJob(JobCompletionNotificationListener listener, Step step1) {
        return jobBuilderFactory.get("thisJob")
                .incrementer(new RunIdIncrementer())
                .listener(listener)
                .flow(step1)
                .end()
                .build();
    }

    //TODO 配置可以一次操作的数据量 chunkSize ,可以从配置文件读入
    @Bean
    public Step step1(MyBatisBatchItemWriter<User> writer,@Qualifier("backupSqlSessionFactory") SqlSessionFactory backupSqlSessionFactory) {
        return stepBuilderFactory.get("step1")
                .<User, User>chunk(10)
                .reader(userMybatisReader(backupSqlSessionFactory))
                .processor(userStandardInfoProcessor())
                .writer(userMybatisWriter(backupSqlSessionFactory))
                .build();
    }
}
