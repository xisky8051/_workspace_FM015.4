package fm0154.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.dao.ItemDao;
import fm0154.dao.MemberDao;
import fm0154.model.Member;
import fm0154.service.ClientService;
import fm0154.service.ItemService;
import fm0154.service.MailService;
import fm0154.service.MemberService;

@Controller
@SessionAttributes({"memberIndexs", "fn"})
public class MemberController {
	
	@Autowired
	private MailService mailServer;
	
	@Autowired
	PasswordEncoder passwordEncoder;

	// 個人首頁
	@GetMapping({ "/memberindex" })
	public String memberIndex(Model model) {
		ClientService.loginCheck(model);
		// 我自己的物品
		model.addAttribute("memberIndexs", ItemService.getItemByMemberBSelf());
		// 我登記的物品
		model.addAttribute("memberIndexs2", ItemService.getItemByMemberBOther());
		return "memberindex";	
	}
	
	// 自己被登記的物品
	@GetMapping({ "/memberindex1/{id}" })
	public String memberIndex1(Model model,@PathVariable("id") Integer id) {
		ClientService.loginCheck(model);
//		model.addAttribute("memberIndexs2", ItemService.getItemOther());
		model.addAttribute("memberIndexs2", ItemService.getAllItems().get(id-1));
		model.addAttribute("memberIndex", MemberDao.getAllMembers().get(4));
		return "memberindex1";	
	}
	
	@GetMapping({ "/memberindexCheck/{id}" })
	public void memberIndexCheck(
		HttpServletRequest request, 
		HttpServletResponse response,
		Model model,
//		@RequestParam(required = false) String self,
//		@RequestParam(required = false) String other,
		@RequestParam("name") String name,
		@RequestParam("email") String email,
		@PathVariable("id") Integer id
	) {
		ClientService.loginCheck(model);
//		try {
//			model.addAttribute("fn", "alert(`換易交易已完成\n您的物品：圓滾滾海豹抱枕\n對方的物品：哈利波特限量口罩`);");
//			response.sendRedirect("memberindex1/16");
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		System.out.println("MemberDao.getAllMembers().get(4).getEmail():"+MemberDao.getAllMembers().get(4).getEmail());
		try {
			String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ "/fm0154";
			Integer id1 = MemberService.getMembersSize();
			Date createTime = new Date();
			String codeRaw = id1 + "@" + new SimpleDateFormat("yyyy-MM-dd$hh:mm:ss").format(createTime);
			String code = passwordEncoder.encode(codeRaw).replace("/", ".");
			System.out.println("passwordEncoder.encode(codeRaw).replace(\"/\", \".\"):"+code);

			mailServer.sendMail(
				"FM015.4 登記確認信(開頭)",
				"<p>" +  ItemDao.getAllItems().get(id-1).getName() +
				"    點擊下列連結即可查看商品詳情(html5格式) : <br />" + 
				"    " + path + "/productdetails/" + id + 
				"</p>", 
				email);
			ClientService.register = 1;
			model.addAttribute("register", ClientService.register);
			model.addAttribute("email", email);
			model.addAttribute("email2", "測試測試:要取用email2要改login.jsp下面的js${}");
//			model.addAttribute("email2", email);
			response.sendRedirect("/fm0154/memberindex");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@PostMapping("/memberindexCheck/{id}")
	public void memberindexCheck1(
			HttpServletRequest request, 
			HttpServletResponse response,
			Model model, 
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@PathVariable("id") Integer id1) {
		
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

			mailServer.sendMail(
				"FM015.4 登記確認信(開頭)",
				"<p>" +  ItemDao.getAllItems().get(id1-1).getName() +
				"    點擊下列連結即可查看商品詳情(html5格式) : <br />" + 
				"    " + path + "/productdetails/" + id1 + 
				"</p>", 
				email);
			ClientService.register = 1;
			model.addAttribute("register", ClientService.register);
			model.addAttribute("email", email);
			model.addAttribute("email2", "測試測試:要取用email2要改login.jsp下面的js${}");
//			model.addAttribute("email2", email);
			response.sendRedirect("/memberindex");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//	@GetMapping({ "/memberindexCheck" })
//	public String memberIndexCheck(
//		HttpServletResponse response,
//		Model model,
//		@RequestParam(required = false) String self,
//		@RequestParam(required = false) String other
//	) {
//		ClientService.loginCheck(model);
////		model.addAttribute("fn", "alert(`換易交易已完成\n您的物品：圓滾滾海豹抱枕\n對方的物品：哈利波特限量口罩`);");
////			response.sendRedirect("memberindex1");
//		
//		return "memberindex1";
//	}
	
}
