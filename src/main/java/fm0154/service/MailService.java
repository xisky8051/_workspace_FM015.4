package fm0154.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.validation.constraints.NotEmpty;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fm0154.config.MainConfig.MailConfig;
import fm0154.dao.SendMailRequest;

@Service
public class MailService {

	@Autowired
	private MailConfig mailConfig;

	public void sendMail(SendMailRequest request) {
		Properties props = new Properties();
		props.put("mail.smtp.host", mailConfig.getHost());
		props.put("mail.smtp.port", mailConfig.getPort());
		props.put("mail.smtp.auth", String.valueOf(mailConfig.isAuthEnabled()));
		props.put("mail.smtp.starttls.enable", String.valueOf(mailConfig.isStarttlsEnabled()));

		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailConfig.getUserAddress(), mailConfig.getUserPwd());
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setSubject(request.getSubject());
			message.setContent(request.getContent(), "text/html; charset=UTF-8");
			message.setFrom(new InternetAddress(mailConfig.getUserAddress(), mailConfig.getUserDisplayName()));
			for (String address : request.getReceivers()) {
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(address));
			}
			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void sendMail(@NotEmpty String subject, @NotEmpty String content, @NotEmpty String ... receivers) {
		SendMailRequest request = new SendMailRequest(subject, content, receivers);
		this.sendMail(request);
	}
 
}