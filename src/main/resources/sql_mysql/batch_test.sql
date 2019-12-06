/*
Navicat MySQL Data Transfer

Source Server         : IMPLEMENTSFUN
Source Server Version : 50725
Source Host           : 47.103.151.13:3306
Source Database       : batch_test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-12-06 14:06:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for BATCH_JOB_EXECUTION
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION`;
CREATE TABLE `BATCH_JOB_EXECUTION` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `BATCH_JOB_INSTANCE` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_EXECUTION
-- ----------------------------
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('0', '2', '0', '2019-12-06 03:18:32', '2019-12-06 03:18:32', '2019-12-06 03:18:33', 'FAILED', 'FAILED', '', '2019-12-06 03:18:33', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('1', '2', '1', '2019-12-06 03:26:26', '2019-12-06 03:26:27', '2019-12-06 03:26:28', 'FAILED', 'FAILED', '', '2019-12-06 03:26:28', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('2', '2', '2', '2019-12-06 03:28:30', '2019-12-06 03:28:30', '2019-12-06 03:28:31', 'FAILED', 'FAILED', '', '2019-12-06 03:28:31', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('3', '2', '3', '2019-12-06 03:29:31', '2019-12-06 03:29:32', '2019-12-06 03:29:33', 'FAILED', 'FAILED', '', '2019-12-06 03:29:33', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('4', '2', '4', '2019-12-06 03:31:29', '2019-12-06 03:31:31', '2019-12-06 03:31:37', 'FAILED', 'FAILED', '', '2019-12-06 03:31:37', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('5', '2', '5', '2019-12-06 03:33:54', '2019-12-06 03:33:54', '2019-12-06 03:33:55', 'FAILED', 'FAILED', '', '2019-12-06 03:33:55', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('6', '2', '6', '2019-12-06 03:35:17', '2019-12-06 03:35:18', '2019-12-06 03:35:19', 'FAILED', 'FAILED', '', '2019-12-06 03:35:19', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('7', '2', '7', '2019-12-06 03:37:13', '2019-12-06 03:37:14', '2019-12-06 03:37:15', 'FAILED', 'FAILED', '', '2019-12-06 03:37:15', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('8', '2', '8', '2019-12-06 03:41:26', '2019-12-06 03:41:27', '2019-12-06 03:41:28', 'FAILED', 'FAILED', '', '2019-12-06 03:41:28', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('9', '2', '9', '2019-12-06 03:42:50', '2019-12-06 03:42:50', '2019-12-06 03:42:51', 'FAILED', 'FAILED', '', '2019-12-06 03:42:51', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('10', '2', '10', '2019-12-06 03:45:11', '2019-12-06 03:45:11', '2019-12-06 03:45:13', 'FAILED', 'FAILED', '', '2019-12-06 03:45:13', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('11', '2', '11', '2019-12-06 03:49:37', '2019-12-06 03:49:38', '2019-12-06 03:49:39', 'FAILED', 'FAILED', '', '2019-12-06 03:49:39', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('12', '2', '12', '2019-12-06 03:53:18', '2019-12-06 03:53:18', '2019-12-06 03:53:20', 'FAILED', 'FAILED', '', '2019-12-06 03:53:20', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('13', '2', '13', '2019-12-06 03:55:07', '2019-12-06 03:55:08', '2019-12-06 03:55:14', 'FAILED', 'FAILED', '', '2019-12-06 03:55:14', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('14', '2', '14', '2019-12-06 04:03:23', '2019-12-06 04:03:24', '2019-12-06 04:03:26', 'FAILED', 'FAILED', '', '2019-12-06 04:03:27', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('15', '2', '15', '2019-12-06 05:43:50', '2019-12-06 05:43:50', '2019-12-06 05:43:52', 'FAILED', 'FAILED', '', '2019-12-06 05:43:53', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('16', '2', '16', '2019-12-06 05:57:49', '2019-12-06 05:57:49', '2019-12-06 05:57:52', 'COMPLETED', 'COMPLETED', '', '2019-12-06 05:57:52', null);
INSERT INTO `BATCH_JOB_EXECUTION` VALUES ('17', '2', '17', '2019-12-06 06:06:10', '2019-12-06 06:06:11', '2019-12-06 06:06:13', 'COMPLETED', 'COMPLETED', '', '2019-12-06 06:06:13', null);

-- ----------------------------
-- Table structure for BATCH_JOB_EXECUTION_CONTEXT
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_CONTEXT`;
CREATE TABLE `BATCH_JOB_EXECUTION_CONTEXT` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_EXECUTION_CONTEXT
-- ----------------------------
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('0', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('1', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('2', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('3', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('4', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('5', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('6', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('7', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('8', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('9', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('10', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('11', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('12', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('13', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('14', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('15', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('16', '{}', null);
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES ('17', '{}', null);

-- ----------------------------
-- Table structure for BATCH_JOB_EXECUTION_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_PARAMS`;
CREATE TABLE `BATCH_JOB_EXECUTION_PARAMS` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime DEFAULT NULL,
  `LONG_VAL` bigint(20) DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_EXECUTION_PARAMS
-- ----------------------------
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('0', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '1', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('1', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '2', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('2', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '3', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('3', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '4', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('4', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '5', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('5', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '6', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('6', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '7', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('7', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '8', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('8', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '9', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('9', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '10', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('10', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '11', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('11', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '12', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('12', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '13', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('13', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '14', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('14', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '15', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('15', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '16', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('16', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '17', '0', 'Y');
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES ('17', 'LONG', 'run.id', '', '1970-01-01 00:00:00', '18', '0', 'Y');

-- ----------------------------
-- Table structure for BATCH_JOB_EXECUTION_SEQ
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_SEQ`;
CREATE TABLE `BATCH_JOB_EXECUTION_SEQ` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_EXECUTION_SEQ
-- ----------------------------
INSERT INTO `BATCH_JOB_EXECUTION_SEQ` VALUES ('17', '0');

-- ----------------------------
-- Table structure for BATCH_JOB_INSTANCE
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_INSTANCE`;
CREATE TABLE `BATCH_JOB_INSTANCE` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_INSTANCE
-- ----------------------------
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('0', '0', 'thisJob', '853d3449e311f40366811cbefb3d93d7');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('1', '0', 'thisJob', 'e070bff4379694c0210a51d9f6c6a564');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('2', '0', 'thisJob', 'a3364faf893276dea0caacefbf618db5');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('3', '0', 'thisJob', '47c0a8118b74165a864b66d37c7b6cf5');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('4', '0', 'thisJob', 'ce148f5f9c2bf4dc9bd44a7a5f64204c');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('5', '0', 'thisJob', 'bd0034040292bc81e6ccac0e25d9a578');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('6', '0', 'thisJob', '597815c7e4ab1092c1b25130aae725cb');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('7', '0', 'thisJob', 'f55a96b11012be4fcfb6cf005435182d');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('8', '0', 'thisJob', '96a5ed9bac43e779455f3e71c0f64840');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('9', '0', 'thisJob', '1aac4f3e74894b78fa3ce5d8a25e1ef0');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('10', '0', 'thisJob', '604bbfc4c68cb1f903780c2853ad4801');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('11', '0', 'thisJob', '556ebe34220b4032509f2581356ba47c');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('12', '0', 'thisJob', 'edc440efb5ddd2a3b2622f16a12bf105');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('13', '0', 'thisJob', 'f3d5e568c384ee72cba8bc6a51057fe4');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('14', '0', 'thisJob', '378ef1ecb81cf9edac4ab119bdab9d9d');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('15', '0', 'thisJob', 'e073471cc312cadef424c3be7915c0af');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('16', '0', 'thisJob', '46ba78a99abf1e2fba4a8861749d7572');
INSERT INTO `BATCH_JOB_INSTANCE` VALUES ('17', '0', 'thisJob', 'b88d31b704adf9f94fe9d4ccff795708');

-- ----------------------------
-- Table structure for BATCH_JOB_SEQ
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_JOB_SEQ`;
CREATE TABLE `BATCH_JOB_SEQ` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_JOB_SEQ
-- ----------------------------
INSERT INTO `BATCH_JOB_SEQ` VALUES ('17', '0');

-- ----------------------------
-- Table structure for BATCH_STEP_EXECUTION
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION`;
CREATE TABLE `BATCH_STEP_EXECUTION` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_STEP_EXECUTION
-- ----------------------------
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('0', '2', 'step1', '0', '2019-12-06 03:18:33', '2019-12-06 03:18:33', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy66.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:18:33');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('1', '2', 'step1', '1', '2019-12-06 03:26:28', '2019-12-06 03:26:28', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy66.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:26:28');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('2', '2', 'step1', '2', '2019-12-06 03:28:31', '2019-12-06 03:28:31', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy66.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:28:31');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('3', '2', 'step1', '3', '2019-12-06 03:29:32', '2019-12-06 03:29:32', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy66.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:29:32');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('4', '2', 'step1', '4', '2019-12-06 03:31:34', '2019-12-06 03:31:36', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy67.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:31:36');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('5', '2', 'step1', '5', '2019-12-06 03:33:55', '2019-12-06 03:33:55', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy67.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:33:55');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('6', '2', 'step1', '6', '2019-12-06 03:35:18', '2019-12-06 03:35:18', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy67.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:35:18');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('7', '2', 'step1', '7', '2019-12-06 03:37:14', '2019-12-06 03:37:14', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy67.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:37:14');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('8', '2', 'step1', '8', '2019-12-06 03:41:27', '2019-12-06 03:41:28', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy73.run(Unknown Sou', '2019-12-06 03:41:28');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('9', '2', 'step1', '9', '2019-12-06 03:42:50', '2019-12-06 03:42:51', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy66.run(Unknown Sou', '2019-12-06 03:42:51');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('10', '2', 'step1', '10', '2019-12-06 03:45:12', '2019-12-06 03:45:12', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy51.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:45:12');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('11', '2', 'step1', '11', '2019-12-06 03:49:38', '2019-12-06 03:49:38', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy51.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:49:38');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('12', '2', 'step1', '12', '2019-12-06 03:53:19', '2019-12-06 03:53:20', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy51.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:53:20');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('13', '2', 'step1', '13', '2019-12-06 03:55:12', '2019-12-06 03:55:13', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy51.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherC', '2019-12-06 03:55:13');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('14', '2', 'step1', '14', '2019-12-06 04:03:25', '2019-12-06 04:03:26', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader$$FastClassBySpringCGLIB$$ebb633d0.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:769)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:747)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:747)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:689)\r\n	at org.mybatis.spring.batch.MyBatisCursorItemReader$$EnhancerBySpringCGLIB$$838152af.open(<generated>)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.t', '2019-12-06 04:03:26');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('15', '2', 'step1', '15', '2019-12-06 05:43:51', '2019-12-06 05:43:52', 'FAILED', '0', '0', '0', '0', '0', '0', '0', '0', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader$$FastClassBySpringCGLIB$$ebb633d0.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:769)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:747)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:747)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:689)\r\n	at org.mybatis.spring.batch.MyBatisCursorItemReader$$EnhancerBySpringCGLIB$$3633d06f.open(<generated>)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.t', '2019-12-06 05:43:52');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('16', '5', 'step1', '16', '2019-12-06 05:57:50', '2019-12-06 05:57:52', 'COMPLETED', '3', '21', '0', '21', '0', '0', '0', '0', 'COMPLETED', '', '2019-12-06 05:57:52');
INSERT INTO `BATCH_STEP_EXECUTION` VALUES ('17', '5', 'step1', '17', '2019-12-06 06:06:11', '2019-12-06 06:06:13', 'COMPLETED', '3', '21', '0', '21', '0', '0', '0', '0', 'COMPLETED', '', '2019-12-06 06:06:13');

-- ----------------------------
-- Table structure for BATCH_STEP_EXECUTION_CONTEXT
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION_CONTEXT`;
CREATE TABLE `BATCH_STEP_EXECUTION_CONTEXT` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `BATCH_STEP_EXECUTION` (`STEP_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_STEP_EXECUTION_CONTEXT
-- ----------------------------
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('0', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('1', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('2', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('3', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('4', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('5', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('6', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('7', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('8', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('9', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('10', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('11', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('12', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('13', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('14', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('15', '{}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('16', '{\"MyBatisCursorItemReader.read.count\":22,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', null);
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES ('17', '{\"MyBatisCursorItemReader.read.count\":22,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', null);

-- ----------------------------
-- Table structure for BATCH_STEP_EXECUTION_SEQ
-- ----------------------------
DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION_SEQ`;
CREATE TABLE `BATCH_STEP_EXECUTION_SEQ` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BATCH_STEP_EXECUTION_SEQ
-- ----------------------------
INSERT INTO `BATCH_STEP_EXECUTION_SEQ` VALUES ('17', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'LEE HOM', '19982311');
INSERT INTO `user` VALUES ('3', 'Jack Chen', 'ooods123sjdjdd');
INSERT INTO `user` VALUES ('4', 'Blues Lee', 'si8u9u2312323');
INSERT INTO `user` VALUES ('5', 'Nan Mon Kong', '111111111111111111');
INSERT INTO `user` VALUES ('6', 'S', '000012939iiijmmmm');
INSERT INTO `user` VALUES ('7', 'Yunme naraba', '889912322');
INSERT INTO `user` VALUES ('8', 'Imada ni', 'pp0000990989');
INSERT INTO `user` VALUES ('9', 'wasureta', 'kkkk1232ll2l2l111');
INSERT INTO `user` VALUES ('10', 'furubita', '8kkk1k1111');
INSERT INTO `user` VALUES ('11', 'modora nai', 'iioio123123123');
INSERT INTO `user` VALUES ('12', 'Shiawase', 'kkk1kk2199292');
INSERT INTO `user` VALUES ('13', 'iezu ni kakushiteta', 'lllmm');
INSERT INTO `user` VALUES ('14', 'Kitto', '1231112');
INSERT INTO `user` VALUES ('15', 'Ari wa shinai', 'ooo321-21');
INSERT INTO `user` VALUES ('16', 'Anata mune', '123100129');
INSERT INTO `user` VALUES ('17', 'Ame Ga', '212312');
INSERT INTO `user` VALUES ('18', 'Sono', '12311234');
INSERT INTO `user` VALUES ('19', 'namida', '199382822');
INSERT INTO `user` VALUES ('20', 'Are kara', '009192');
INSERT INTO `user` VALUES ('21', 'Ano hi', 'kkk299213');
INSERT INTO `user` VALUES ('22', 'Ima Demo anata', '923k1k22');

-- ----------------------------
-- Table structure for user_cp
-- ----------------------------
DROP TABLE IF EXISTS `user_cp`;
CREATE TABLE `user_cp` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_cp
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_info_cp
-- ----------------------------
DROP TABLE IF EXISTS `user_info_cp`;
CREATE TABLE `user_info_cp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info_cp
-- ----------------------------
