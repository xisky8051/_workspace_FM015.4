package fm0154.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.model.Member;
import fm0154.service.ClientService;
import fm0154.service.MailService;
import fm0154.service.MemberService;

@Controller
@SessionAttributes({"email", "register","email1","email2"})
public class RegisterController {

	@Autowired
	private MailService mailServer;

	@Autowired
	PasswordEncoder passwordEncoder;

	@GetMapping("/register")
	public String login(Model model) {
		ClientService.logout();
		ClientService.loginCheck(model);
		return "register";
	}

	@PostMapping("/registered")
	public void registered(
			HttpServletRequest request, 
			HttpServletResponse response,
			Model model, 
			@RequestParam("name") String name,
			@RequestParam("email") String email, 
			@RequestParam("phone") String phone,
			@RequestParam("password") String password) {
		
		System.out.println("request.getScheme():"+request.getScheme());
		System.out.println("request.getServerName():"+request.getServerName());
		System.out.println("request.getServerPort()"+request.getServerPort());
		System.out.println("request.getContextPath()"+request.getContextPath());
		
		
		try {
			String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ "/fm0154";
			Integer id = MemberService.getMembersSize();
			Date createTime = new Date();
			String codeRaw = id + "@" + new SimpleDateFormat("yyyy-MM-dd$hh:mm:ss").format(createTime);
			String code = passwordEncoder.encode(codeRaw).replace("/", ".");
			System.out.println("passwordEncoder.encode(codeRaw).replace(\"/\", \".\"):"+code);
			// add
			MemberService.addMember(
				new Member(
					6, 
					name, 
					email+"他抓了這個", 
					null,
					null, 
					phone, 
					password));
			//
			mailServer.sendMail(
				"FM015.4 註冊確認信(開頭)",
				"<p>" + 
				"    請點擊下列驗證連結(html5格式) : <br />" + 
				"    " + path + "/key?code=" + code + 
				"</p>", 
				email);
			ClientService.register = 1;
			model.addAttribute("register", ClientService.register);
			model.addAttribute("email", email);
			model.addAttribute("email2", "測試測試:要取用email2要改login.jsp下面的js${}");
//			model.addAttribute("email2", email);
			response.sendRedirect("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("/key")
	@ResponseBody
	public void registered(
		HttpServletResponse response,
		Model model,
		@RequestParam String code		
	) {
		try {
			ClientService.register = 2;
			model.addAttribute("register", ClientService.register);
			System.out.println(ClientService.register);
			response.sendRedirect("login");
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("==========");
	}

}
