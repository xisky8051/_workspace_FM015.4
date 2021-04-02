package fm0154.dao;

import java.util.ArrayList;
import java.util.List;


import fm0154.model.Item;

public class ItemDao {

	private static final List<Item> items = new ArrayList<>();

	static {
		items.add(new Item(1, "全聯全新BODUM美式濾滴咖啡機星巴克可參考", "正直咖啡杯", "1-1.jpg", "1-2.jpg"));
		items.add(new Item(2, "艦隊Collection 小說 1-7 已完結", "騎馬武士", "2-1.jpg"));
		items.add(new Item(3, "打工勇者 輕小說 1-4集 二手書 九成五新", "offworker080", "3-1.jpg", "3-2.jpg"));
		items.add(new Item(4, "二手漫畫 浪漫時鐘 槙陽子 8成新 ", "coloroutpost", "4-1.jpg", "4-2.jpg"));
		items.add(new Item(5, "舊書", "絕命青茶", "5-1.jpg", "5-2.jpg", "5-3.jpg"));
		items.add(new Item(6, "伊坂幸太郎 推理小說 二手書", "半糖不加冰", "6-1.jpg"));
		items.add(new Item(7, "Asus外接式薄型光碟機（二手良品）", "阿明電器行", "7-1.jpg", "7-2.jpg"));
		items.add(new Item(8, "全新chanel唇膏 YSL 圓管 雪絨唇釉 GA 紅管 黑管 唇露 專櫃唇膏", "阿嬸甘仔店", "8-1.jpg", "8-2.jpg", "7-3.jpg"));
		items.add(new Item(9, "硅膠貓爪筆袋", "今天的貓奴", "9-1.jpg"));
		items.add(new Item(10, "五月花厚衛生紙一串", "我家不在全家", "10-1.jpg", "10-2.jpg", "10-3.jpg"));
		items.add(new Item(11, "男用夾腳拖 美國帶回 12吋", "BuyalotUS", "11-1.jpg"));
		items.add(new Item(12, "水邊動物腳踏墊 海獺", "Umidaisuki", "12-1.jpg", "12-2.jpg", "12-3.jpg", "12-4.jpg"));
		items.add(new Item(13, "軟殼筆電保護套", "RayofLight", "13-1.jpg", "13-2.jpg"));
		items.add(
				new Item(14, "一番賞 海賊王 H賞 玻璃杯 杯子 FULL FORCE 航海王 ONE PIECE 和之國", "aaa890510bbb", "14-1.jpg", "14-2.jpg"));
		items.add(new Item(15, "Android 手機傳輸線 充電線", "Heyapple", "15-1.jpg", "15-2.jpg", "15-3.jpg", "15-4.jpg",
				"15-5.jpg"));
		items.add(new Item(16, "圓滾滾海豹抱枕", "海綿寶寶", "16-1.jpg", "16-2.jpg", "16-3.jpg"));
		items.add(new Item(17, "哈利波特限量口罩", "鮭魚", "17-1.jpg"));
	}

	
	
//	static {
//		items.add(new Item(1, "全聯全新BODUM美式濾滴咖啡機星巴克可參考", "正直咖啡杯", "1-1.jpg"));
//		items.add(new Item(2, "艦隊Collection 小說 1-7 已完結", "騎馬武士", "2-1.jpg"));
//		items.add(new Item(3, "打工勇者 輕小說 1-4集 二手書 九成五新", "offworker080", "3-1.jpg"));
//		items.add(new Item(4, "二手漫畫 浪漫時鐘 槙陽子 8成新 ", "coloroutpost", "4-1.jpg"));
//		items.add(new Item(5, "舊書", "絕命青茶", "5-1.jpg"));
//		items.add(new Item(6, "伊坂幸太郎 推理小說 二手書", "半糖不加冰", "6-1.jpg"));
//		items.add(new Item(7, "Asus外接式薄型光碟機（二手良品）", "阿明電器行", "7-1.jpg"));
//		items.add(new Item(8, "全新chanel唇膏 YSL 圓管 雪絨唇釉 GA 紅管 黑管 唇露 專櫃唇膏", "阿嬸甘仔店", "7-1.jpg"));
//		items.add(new Item(9, "硅膠貓爪筆袋", "今天的貓奴", "8-1.jpg"));
//		items.add(new Item(10, "五月花厚衛生紙一串", "我家不在全家", "9-1.jpg"));
//		items.add(new Item(11, "男用夾腳拖 美國帶回 12吋", "BuyalotUS", "10-1.jpg"));
//		items.add(new Item(12, "悠游在房裡水邊動物腳踏墊 海獺", "Umidaisuki", "11-1.jpg"));
//		items.add(new Item(13, "軟殼筆電保護套", "RayofLight", "12-1.jpg"));
//		items.add(
//				new Item(14, "一番賞 海賊王 H賞 玻璃杯 杯子 FULL FORCE 航海王 ONE PIECE 和之國", "aaa890510bbb", "13-1.jpg"));
//		items.add(new Item(15, "Android 手機傳輸線 充電線", "Heyapple", "15-1.jpg"));
//		items.add(new Item(16, "圓滾滾海豹抱枕", "怕豹", "16-1.jpg"));
//	}
	
	
	public static List<Item> getAllItems() {
		return items;
	}
	
	
	
	
	private static final DBList<Item> db = new DBList<>();
	
	
	static {
		db.add(new Item(1, "全聯全新BODUM美式濾滴咖啡機星巴克可參考", "正直咖啡杯", "1-1.jpg", "1-2.jpg"));
		db.add(new Item(2, "艦隊Collection 小說 1-7 已完結", "騎馬武士", "2-1.jpg"));
		db.add(new Item(3, "打工勇者 輕小說 1-4集 二手書 九成五新", "offworker080", "3-1.jpg", "3-2.jpg"));
		db.add(new Item(4, "二手漫畫 浪漫時鐘 槙陽子 8成新 ", "coloroutpost", "4-1.jpg", "4-2.jpg"));
		db.add(new Item(5, "舊書", "絕命青茶", "5-1.jpg", "5-2.jpg", "5-3.jpg"));
		db.add(new Item(6, "伊坂幸太郎 推理小說 二手書", "半糖不加冰", "6-1.jpg"));
		db.add(new Item(7, "Asus外接式薄型光碟機（二手良品）", "阿明電器行", "7-1.jpg", "7-2.jpg"));
		db.add(new Item(8, "全新chanel唇膏 YSL 圓管 雪絨唇釉 GA 紅管 黑管 唇露 專櫃唇膏", "阿嬸甘仔店", "8-1.jpg", "8-2.jpg", "7-3.jpg"));
		db.add(new Item(9, "硅膠貓爪筆袋", "今天的貓奴", "9-1.jpg"));
		db.add(new Item(10, "五月花厚衛生紙一串", "我家不在全家", "10-1.jpg", "10-2.jpg", "10-3.jpg"));
		db.add(new Item(11, "男用夾腳拖 美國帶回 12吋", "BuyalotUS", "11-1.jpg"));
		db.add(new Item(12, "水邊動物腳踏墊 海獺", "Umidaisuki", "12-1.jpg", "12-2.jpg", "12-3.jpg", "12-4.jpg"));
		db.add(new Item(13, "軟殼筆電保護套", "RayofLight", "13-1.jpg", "13-2.jpg"));
		db.add(
				new Item(14, "一番賞 海賊王 H賞 玻璃杯 杯子 FULL FORCE 航海王 ONE PIECE 和之國", "aaa890510bbb", "14-1.jpg", "14-2.jpg"));
		db.add(new Item(15, "Android 手機傳輸線 充電線", "Heyapple", "15-1.jpg", "15-2.jpg", "15-3.jpg", "15-4.jpg",
				"15-5.jpg"));
		db.add(new Item(16, "圓滾滾海豹抱枕", "海綿寶寶", "16-1.jpg", "16-2.jpg", "16-3.jpg"));
		db.add(new Item(17, "哈利波特限量口罩", "鮭魚", "17-1.jpg"));
	}

	public static DBList<Item> itemInput() {
		return ItemDao.db;
	}

}
