package fm0154.config;

import java.util.ArrayList;

import javax.servlet.ServletContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.support.OpenSessionInViewInterceptor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

/*
@Configuration:	告訴 Spring 框架此類別含有 bean 的組態資訊
@EnableWebMvc:	啟用 Spring MVC，將請求分派給以 @Controller 修飾的 POJO 類別 
@ComponentScan:	請 Spring 掃描有定義 註釋 (Annotation) 的套件
				含有 Annotation (e.g. @Controller, @Repository, @Service, @Component) 來說明 bean 的組態資訊
				亦需掃描 RootAppConfig.java
*/
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "fm0154" })
public class WebAppConfig implements WebMvcConfigurer {

	@Autowired
	ServletContext context;

	@Autowired
	SessionFactory sessionFactory;

	// 配置 Spring提供的 InternalResourceViewResolver
	@Bean
	public ViewResolver jspViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		// 通知 Spring 框架 jsp 網頁 的存放位置
		// 配置視圖解析器: 把 handler 方法傳回值解析為實際物理視圖
		// 前導字 + 後導字 = /WEB-INF/[YourJSPFileName].jsp
		viewResolver.setPrefix("/WEB-INF/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	// 當找不到靜態資源，不要丟出404頁面，啟動 Tomcat 的 defaultservlet 尋找
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		OpenSessionInViewInterceptor openSessionInViewInterceptor = new OpenSessionInViewInterceptor();
		openSessionInViewInterceptor.setSessionFactory(sessionFactory);
		registry.addWebRequestInterceptor(openSessionInViewInterceptor).addPathPatterns("/**");
	}

	public MappingJackson2JsonView jsonView() {
		MappingJackson2JsonView view = new MappingJackson2JsonView();
		view.setPrettyPrint(true);
		return view;
	}

	// contentNegotiatingViewResolver 缺點: 會把所有放在 Model 裡的東西都轉成 JSON
	@Bean
	public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
		ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
		resolver.setContentNegotiationManager(manager);
		ArrayList<View> views = new ArrayList<>();
		// 把視圖加上視圖解析器，可加不只一個
		views.add(jsonView());
		resolver.setDefaultViews(views);
		// 內容協商視圖解析器
		return resolver;
	}

	// 定義上傳檔案的配置
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}

	// 會員密碼進行加密處理
	@Bean
	public PasswordEncoder passwordEncoder() {
		// 使用BCrypt加密
		return new BCryptPasswordEncoder();
	}

}