package com.example.batchprocessing;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = {"com.example.batchprocessing.mapper"})
public class BatchprocessingApplication {

    public static void main(String[] args) {
        SpringApplication.run(BatchprocessingApplication.class, args);
    }

}
