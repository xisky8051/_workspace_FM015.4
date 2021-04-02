package fm0154.service;

import java.util.ArrayList;
import java.util.List;

import fm0154.dao.ItemDao;
import fm0154.model.Item;

public class ItemService  {

	public static List<Item> getAllItems() {
		return ItemDao.getAllItems();
	}
	
	public static List<Item> getItemByMemberA() {
		return ItemDao.getAllItems().subList(16, 17);
	}
	
	public static List<Item> getItemByMemberBSelf() {
		// 9, 12, 16
		List<Item> list = new ArrayList<>();
		list.add(ItemDao.getAllItems().get(8));
		list.add(ItemDao.getAllItems().get(11));
		list.add(ItemDao.getAllItems().get(15));
		return list;
	}
	
	public static List<Item> getItemByMemberBOther() {
		// 2, 3
		List<Item> list = new ArrayList<>();
		list.add(ItemDao.getAllItems().get(1));
		list.add(ItemDao.getAllItems().get(2));
		return list;
	}
	
	public static List<Item> getItemOther() {
		List<Item> list = new ArrayList<>();
		list.add(ItemDao.getAllItems().get(4));
		list.add(ItemDao.getAllItems().get(16));
		list.add(ItemDao.getAllItems().get(0));
		list.add(ItemDao.getAllItems().get(6));
		list.add(ItemDao.getAllItems().get(12));
		list.add(ItemDao.getAllItems().get(9));
		list.add(ItemDao.getAllItems().get(5));
		list.add(ItemDao.getAllItems().get(7));
		return list;
	}
	
	
	
}
