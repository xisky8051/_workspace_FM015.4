package fm0154.dao;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@SuppressWarnings("serial")
public class DBList<T> extends ArrayList<T> {

	// 取得全部樣本的副本，避免破壞原本的資料
	@SuppressWarnings("unchecked")
	public DBList<T> all() {
		return (DBList<T>) this.clone();
	}

	// 依照關鍵字篩選出某欄位符合條件之元素
	public DBList<T> filter(String filterName, String keyword, Boolean isEqual) {
		DBList<T> cloneList = this.all();
		DBList<T> newList = new DBList<>();
		Field f = getField(filterName);
		cloneList.forEach(e -> {
			try {
				if (isEqual) {
					if (((String) f.get(e)).equals(keyword)) {
						newList.add(e);
					}
				} else {
					if (((String) f.get(e)).contains(keyword)) {
						newList.add(e);
					}
				}
			} catch (IllegalArgumentException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		});
		return newList;
	}

	// 依照指定的「欄位名稱」, 「排序方式 (升幕=true / 降幕=false)」排序
	public DBList<T> sortBy(String filterName, Boolean isAscending) {
		Field f = getField(filterName);
		String fTypeName = f.getType().getSimpleName();
		int asce = isAscending ? 1 : -1;
		this.sort((e1, e2) -> {
			try {
				switch (fTypeName) {
				case "String":
					return asce * (((String) f.get(e1)).compareTo((String) f.get(e2)));
				case "Double":
					return asce * (((Double) f.get(e1)).compareTo((Double) f.get(e2)));
				case "Integer":
					return asce * (((Integer) f.get(e1)).compareTo((Integer) f.get(e2)));
				case "Date":
					return asce * (((Date) f.get(e1)).compareTo((Date) f.get(e2)));
				default:
					return 0;
				}
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
			return 0;
		});
		return this.all();
	}
	
	// 依照指定的「欄位名稱」, 預設升幕排序
	public DBList<T> sortBy(String filterName) {
		return sortBy(filterName, true);
	}

	// 多重排序
	public DBList<T> sortByMultiple(String... filterNames) {
		for (int i = 0; i < filterNames.length; i++) {
			int j = filterNames.length - i - 1;
			boolean isAscending = !filterNames[j].substring(0, 1).equals("-");
			String fieldName = isAscending ? filterNames[j] : filterNames[j].substring(1);
			this.sortBy(fieldName, isAscending);
		}
		return this.all();
	}

	// 取特定分頁
	public DBList<T> pages(int unit, int page) {
		DBList<T> cloneList = this.all();
		DBList<T> newList = new DBList<>();
		cloneList.subList((page - 1) * unit, page * unit).forEach(e -> {
			newList.add(e);
		});
		return newList;	
	}

	// 內部方法(不可從外部呼叫): 以 Field 名稱 String 回傳 Field 參照
	private Field getField(String fieldName) {
		Field[] fs = this.get(0).getClass().getDeclaredFields();
		Field thisf = null;
		for (Field f : fs) {
			String name = f.getName();
			if (name.substring(name.indexOf(".") + 1).equals(fieldName)) {
				f.setAccessible(true);
				thisf = f;
			}
		}
		return thisf;
	}

}