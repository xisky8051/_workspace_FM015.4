package fm0154.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:mail.properties")
public class MainConfig {

	@Configuration
	public class MailConfig {

		@Value("${mail.gmail_host}")
		private String host;

		@Value("${mail.gmail_port}") // 使用 : 符號可以定義預設值
		private int port;

		@Value("${mail.auth_enabled}")
		private boolean authEnabled;

		@Value("${mail.starttls_enabled}")
		private boolean starttlsEnabled;

		@Value("${mail.gmail_user_address}")
		private String userAddress;

		@Value("${mail.gmail_user_pwd}")
		private String userPwd;

		@Value("${mail.user_display_name}")
		private String userDisplayName;

		public String getHost() {
			return host;
		}

		public int getPort() {
			return port;
		}

		public boolean isAuthEnabled() {
			return authEnabled;
		}

		public boolean isStarttlsEnabled() {
			return starttlsEnabled;
		}

		public String getUserAddress() {
			return userAddress;
		}

		public String getUserPwd() {
			return userPwd;
		}

		public String getUserDisplayName() {
			return userDisplayName;
		}

	}

}
