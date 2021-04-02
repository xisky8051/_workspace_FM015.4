package fm0154.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableTransactionManagement
@PropertySource("classpath:jdbc.properties")
public class RootAppConfig {

	@Value("${jdbc.user}")
	private String user;
	@Value("${jdbc.password}")
	private String password;
	@Value("${jdbc.driverClass}")
	private String driveClass;
	@Value("${jdbc.DBName}")
	private String DBName;
	@Value("${jdbc.initPoolSize}")
	private Integer initPoolSize;
	@Value("${jdbc.maxPoolSize}")
	private Integer maxPoolSize;
	@Value("${jdbc.jdbcUrl_1st}")
	private String url_1st;
	@Value("${jdbc.jdbcUrl_2nd}")
	private String url_2nd;

	private String getUrl() {
		return url_1st + DBName + url_2nd;
	}

	// 定義 DataSource
	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource ds = new ComboPooledDataSource();
		try {
			ds.setUser(user);
			ds.setPassword(password);
			ds.setDriverClass(driveClass);
			ds.setJdbcUrl(getUrl());
			ds.setInitialPoolSize(initPoolSize);
			ds.setMaxPoolSize(maxPoolSize);
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ds;
	}

	// 建立 sessionFactory
	@Bean
	public LocalSessionFactoryBean sessionFactoryBean() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
		factoryBean.setDataSource(dataSource());
		// 第一次建立本檔案時，就必須列入所有含永續類別 (@Entity) 的套件
		factoryBean.setPackagesToScan(new String[] { "fm0154" });
		factoryBean.setHibernateProperties(additionalProperties());
		return factoryBean;
	}

	// 啟動交易
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}

	// 定義 Hibernate 組態資訊
	private Properties additionalProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", org.hibernate.dialect.MySQL8Dialect.class);
		// 是否要顯示 sql 代碼
		properties.put("hibernate.show_sql", Boolean.TRUE);
		properties.put("hibernate.format_sql", Boolean.TRUE);
		properties.put("default_batch_fetch_size", 10);
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

}
