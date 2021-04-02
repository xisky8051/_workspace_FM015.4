package fm0154.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	// getRootConfigClasses(): 回傳提供組態資訊 (Java based configuration) 的 Java 類別
	// 本例為RootAppConfig類別: 它說明應用系統中，提供 Service / Dao 功能之 Bean 的組態資訊
	// 例：DataSource 類別、交易管理器 (Transaction managers) 、Hibernate 的 SessionFactory 類別等等
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { RootAppConfig.class };
	}

	// getRootConfigClasses()會傳回提供組態資訊(Java based configuration)的Java類別，
	// 本例為RootAppConfig類別，它說明應用系統中，提供Service/Dao功能之Bean的組態資訊，例如提供
	// DataSource類別、交易管理器(Transaction managers)、Hibernate的SessionFactory類別等。
	// 傳回提供組態資訊的 Java 類別

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// 告訴Spring MVC 哪些套件下有控制器類別，WebAppConfig 會去掃描
		return new Class[] { WebAppConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		// 正斜線 / 表示分派器要處理的所有請求都要交由分派器處理
		return new String[] { "/" };
	}

	// 配置 Post 轉為 Delete 或 Put 請求的設定
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter cef = new CharacterEncodingFilter();
		HiddenHttpMethodFilter hhmf = new HiddenHttpMethodFilter();
		cef.setEncoding("UTF-8");
		return new Filter[] { cef, hhmf };
	}
	
//	@Override
//	public void onStartup(ServletContext context) throws ServletException {
//		super.onStartup(context);
//		context.addListener(InitialListener.class);
//	}

}