package fm0154.model;

public class Item {
	private Integer id;
	private String name;
	private String user;
	private String[] imgUrl;

	public Item(Integer id, String name, String user, String... imgUrl) {
		super();
		this.id = id;
		this.name = name;
		this.user = user;
		this.imgUrl = imgUrl;
	}

	public Item() {
		super();
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", user=" + user + ", imgUrl=" + imgUrl + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String[] getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String[] imgUrl) {
		this.imgUrl = imgUrl;
	}

}
