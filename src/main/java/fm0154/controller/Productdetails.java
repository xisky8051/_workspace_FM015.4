package fm0154.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

import fm0154.dao.ItemDao;
import fm0154.model.ImgUrl;
import fm0154.service.ClientService;
import fm0154.service.ItemService;

@Controller
@SessionAttributes({ "ItemDetails", "ItemDetailsImgs" })
public class Productdetails {

	@GetMapping("/productdetails/{id}")
	public String index3(Model model, @PathVariable("id") Integer id) {
//		model.addAttribute("ItemDetails", fm0154.dao.ItemDao.getAllItems().get((Integer.parseInt(id)-1)));
//		model.addAttribute("ItemDetails1", fm0154.dao.ItemDao.getAllItems());
//		model.addAttribute("testLoginUser", "假想測試物品");	
//		List<ImgUrl> urls = Arrays.asList(ItemDao.getAllItems().get(id - 1).getImgUrl());
		ClientService.loginCheck(model);
		// List<ImgUrl> urls = getImgUrls(ItemDao.getAllItems().get(id - 1).getImgUrl());
		model.addAttribute("ItemDetails", ItemDao.getAllItems().get(id - 1));
		// model.addAttribute("ItemDetails1", ItemDao.getAllItems());
		model.addAttribute("ItemDetails1", ItemService.getItemByMemberA());
		// model.addAttribute("ItemDetailsImgs", urls);
		model.addAttribute("testLoginUser", "假想測試物品");
		model.addAttribute("keyword", "二手");
		return "/productdetails";
	}

	public List<ImgUrl> getImgUrls(String[] urls) {
		List<ImgUrl> list = new ArrayList<>();
		for (String s : urls) {
			list.add(new ImgUrl(s));
		}
		return list;
	}
}
//
//class ImgUrl {
//
//	private String url;
//
//	public ImgUrl(String url) {
//		super();
//		this.url = url;
//	}
//
//	public ImgUrl() {
//		super();
//	}
//
//	public String getUrl() {
//		return url;
//	}
//
//	public void setUrl(String url) {
//		this.url = url;
//	}
//
//	@Override
//	public String toString() {
//		return "ImgUrl [url=" + url + "]";
//	}
//
//}
