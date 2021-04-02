package fm0154.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.model.Member;
import fm0154.service.ClientService;
import fm0154.service.MemberService;

@Controller
@SessionAttributes({"register", "mail"})
public class LoginController {

	@GetMapping("/login")
	public String login(Model model) {
		ClientService.logout();
		ClientService.loginCheck(model);
		return "login";
	}

	@PostMapping("/login")
	public void loginCheck(Model model, HttpServletResponse response, @RequestParam("email") String email) {
		try {
			if(ClientService.register == 2) {
				ClientService.register = 3;
			}
			String userName = "Unknow";
			List<Member> members = MemberService.getAllMembers();
			for(Member m: members) {
				if(m.getEmail().equals(email)) {
					userName = m.getName();
					break;
				}
			}
			ClientService.login(userName, email);
			response.sendRedirect("index");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@GetMapping("/logout")
	public void logout(Model model, HttpServletResponse response) {
		ClientService.logout();
		ClientService.loginCheck(model);
		ClientService.register = 0;
		model.addAttribute("register", ClientService.register);
		try {
			response.sendRedirect("index");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
