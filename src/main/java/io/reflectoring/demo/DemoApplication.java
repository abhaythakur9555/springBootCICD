package io.reflectoring.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoApplication {
	
	@GetMapping("/")
	public String home()
	{
		return "Hello java";
	}

	public static void main(String[] args) {
		System.out.println("this is docker demo");
		SpringApplication.run(DemoApplication.class, args);
	}
}
