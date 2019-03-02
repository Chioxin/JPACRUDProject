package com.skilldistillery.crudhomework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpaproject")
public class BootMvcCrudHomeworkApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMvcCrudHomeworkApplication.class, args);
	}

}
