package fm0154.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.dao.ItemDao;
import fm0154.model.Item;
import fm0154.model.News;
import fm0154.service.ClientService;
import fm0154.service.ItemService;
import fm0154.service.NewsServiceHomePage;

@Controller
@SessionAttributes({"register", "Item"})
public class HomeController {

	@GetMapping({ "/", "/index" })
	public String index(Model model) {
		ClientService.loginCheck(model);
		List<News> allnews = NewsServiceHomePage.getNews();
		allnews.sort((news1, news2)->{
			return (-1) * news1.getCreateTime().getTime() > news2.getCreateTime().getTime() ? 1 : -1;
		});
		model.addAttribute("news", allnews);
		model.addAttribute("register", ClientService.register);
		return "index";
	}	
	
	@GetMapping("/exchanges") // @ResponseBody這邊會把return 出來的東西直接當作字串映出
	public String index1(
			Model model,
			@RequestParam(value = "search", defaultValue = "") String search,
			HttpServletResponse response
	) {		
		

//		if(search!="二手") {
//			model.addAttribute("Item", ItemDao.itemInput().filter("name",search,false));
//			List<Item> allItems = ItemService.getAllItems();
//			model.addAttribute("Item", allItems);
//			model.addAttribute("Item", ItemDao.itemInput());
//		}
//		else {	
//			model.addAttribute("Item", ItemDao.itemInput().filter("name",search,false));
//			model.addAttribute("Item", ItemDao.itemInput());
//		}
//		System.out.println(search);
			
		
		
		model.addAttribute("Item2", ItemDao.itemInput().filter("name",search,false));
		List<Item> allItems = ItemService.getAllItems();
		model.addAttribute("Item", allItems);
		model.addAttribute("keyword", search);
		return "exchanges2";
	}
	
	@GetMapping("/chattest/{id}")
	public String index4(Model model,@PathVariable("id") String id) {
		model.addAttribute("ItemDetails1", fm0154.dao.ItemDao.getAllItems().get((Integer.parseInt(id)-1)));
		return "/chattest";
		
	}
	
	@GetMapping({ "/about" })
	public String about(Model model) {
		ClientService.loginCheck(model);		
		model.addAttribute("register", ClientService.register);
		return "about";
	}
	

}
