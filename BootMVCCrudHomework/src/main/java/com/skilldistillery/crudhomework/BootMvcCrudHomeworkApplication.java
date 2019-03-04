package com.skilldistillery.crudhomework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpaproject")
public class BootMvcCrudHomeworkApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BootMvcCrudHomeworkApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(BootMvcCrudHomeworkApplication.class, args);
	}

}
