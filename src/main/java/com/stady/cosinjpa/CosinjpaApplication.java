package com.stady.cosinjpa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing // BaseTime
public class CosinjpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(CosinjpaApplication.class, args);
	}

}
