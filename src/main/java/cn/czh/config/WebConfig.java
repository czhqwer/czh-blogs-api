package cn.czh.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Configuration
    @ConditionalOnClass(value = {PaginationInterceptor.class})
    public class MybatisPlusIPageConfig {
        @Bean
        public PaginationInterceptor paginationInterceptor() {
            PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
            return paginationInterceptor;
        }
    }


    //跨域访问
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override //重写父类提供的跨域请求处理的接口
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
//                        .allowedOriginPatterns("*")
                        .allowedOrigins("*")
                        .allowCredentials(true)
                        .allowedMethods("GET", "POST", "PUT", "DELETE",
                                "OPTIONS")
                        .allowedHeaders("*")
                        .exposedHeaders("Header1", "Header2");
            }
        };
    }

}
