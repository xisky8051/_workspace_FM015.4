package fm0154.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

@Service
@SessionAttributes({"userStatus", "userName"})
public class ClientService {

	private static boolean userStatus;
	private static String userName;
	private static String userEmail;
	public static Integer register;
	
	static {
		userName = "Unknow";
		userEmail = "Unknow";
		userStatus = false;
		register = 0;
	}
	
	public static void login(String newUserName, String newUserEmail) {
		userName = newUserName;
		userEmail = newUserEmail;
		userStatus = true;
	}
	
	public static void logout() {
		userName = "Unknow";
		userStatus = false;
	}	
	
	public static void loginCheck(Model model) {
		model.addAttribute("userStatus",userStatus);
		model.addAttribute("userName",userName);
		model.addAttribute("userEmail",userEmail);
		model.addAttribute("userInfo",userName + " (" + userEmail + ") ");
	}
	
}
