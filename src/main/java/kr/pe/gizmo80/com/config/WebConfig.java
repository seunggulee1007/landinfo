package kr.pe.gizmo80.com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.pe.gizmo80.com.interceptor.Interceptor;

/**
 * web의 설정파일
 * 
 * @author bomi
 *
 */
@Configuration
class WebConfig implements WebMvcConfigurer {

    /**
     * 컨텍스트 루트로 들어왔을 시 index 페이지로 리다이렉트
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:/index");
        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
    }

    /*
     * 로그인 인증 Interceptor 설정
     */
    @Autowired
    Interceptor Interceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(Interceptor)
                .addPathPatterns("/*")
                .addPathPatterns("/*/*").excludePathPatterns("/login") // 로그인 쪽은예외처리를한다.
                                        .excludePathPatterns("/doLogin")
                                        .excludePathPatterns("/testpage")
                                        .excludePathPatterns("/resources/**")
                                        ;
    }
}
