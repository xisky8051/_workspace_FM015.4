package fm0154.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.service.ClientService;
import fm0154.service.ItemService;

@Controller
@SessionAttributes({"memberIndexs", "fn"})
public class MemberController {

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
		return "memberindex1";	
	}
	
	@GetMapping({ "/memberindexCheck" })
	public void memberIndexCheck(
		HttpServletResponse response,
		Model model,
		@RequestParam(required = false) String self,
		@RequestParam(required = false) String other
	) {
		ClientService.loginCheck(model);
		try {
			model.addAttribute("fn", "alert(`換易交易已完成\n您的物品：圓滾滾海豹抱枕\n對方的物品：哈利波特限量口罩`);");
			response.sendRedirect("memberindex1/16");
		} catch (IOException e) {
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
