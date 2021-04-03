package fm0154.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import fm0154.service.MailService;

public class ConfirmController {
	
	@Autowired
	private MailService mailServer;
	
	@Autowired
	PasswordEncoder passwordEncoder;

}
