package com.kyalo.universitytimetabling;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class UniversityTimetabelingApplication {

	public static void main(String[] args) {
		SpringApplication.run(UniversityTimetabelingApplication.class, args);
	}

}
