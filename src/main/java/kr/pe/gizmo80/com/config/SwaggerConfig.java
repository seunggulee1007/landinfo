package kr.pe.gizmo80.com.config;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMethod;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.builders.ResponseMessageBuilder;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.ResponseMessage;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration // 해당 클래스가 스프링의 설정으로 사용됨을 지정
@EnableSwagger2
public class SwaggerConfig {

    @Bean // xml 에서 아래코드과 같은 형태를 위 코드처럼 함수(method) 의 형태로 설계
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2).select()
                .apis(RequestHandlerSelectors.basePackage("kr.pe.gizmo80.web.controller")).paths(PathSelectors.any())
                .build().apiInfo(apiInfo()).useDefaultResponseMessages(false)
                .globalResponseMessage(RequestMethod.GET, getArrayList());

    }

    private ArrayList<ResponseMessage> getArrayList() {
        ArrayList<ResponseMessage> lists = new ArrayList<ResponseMessage>();

        lists.add(new ResponseMessageBuilder().code(500).message("서버에러").responseModel(new ModelRef("Error")).build());
        lists.add(new ResponseMessageBuilder().code(403).message("권한없음").responseModel(new ModelRef("Forbbiden"))
                .build());

        return lists;
    }

    private ApiInfo apiInfo() {
        return new ApiInfo("Hello REST API", "Some custom description of API.", "API TOS", "Terms of service",
                new Contact("이승구", "http://13.124.137.253:8080", "leesg@n2soft.co.kr"), "License of API",
                "API license URL", Collections.emptyList());
    }

}
