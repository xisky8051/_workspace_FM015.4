package fm0154.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fm0154.model.News;
import fm0154.service.ClientService;
import fm0154.service.NewsService;

@Controller
public class NewsController {
	
	@GetMapping("/news")
	public String newsPage(Model model) {
		ClientService.loginCheck(model);
		List<News> news = NewsService.getNews();
		model.addAttribute("news", news);
		return "news";
	}
	
	@GetMapping("/theNews")
	public String news1(Model model, @RequestParam Integer id, HttpServletResponse response) {
		ClientService.loginCheck(model);
		model.addAttribute("theNews", NewsService.getNewsById(id));
		 return "theNews";
	}
	
}
