package fm0154.model;

import java.util.Date;

public class News {

	private Integer id;
	private String name;
	private Date createTime;
	private Date updateTIme;
	private String title;
	private String subtitle;
	private String author;
	private String tag;
	private String content;
	private String imgUrl;

	public News() {
		super();
	}

	public News(Integer id, String name, Date createTime, Date updateTIme, String title, String subtitle, String author,
			String tag, String content, String imgUrl) {
		super();
		this.id = id;
		this.name = name;
		this.createTime = createTime;
		this.updateTIme = updateTIme;
		this.title = title;
		this.subtitle = subtitle;
		this.author = author;
		this.tag = tag;
		this.content = content;
		this.imgUrl = imgUrl;
	}

	@Override
	public String toString() {
		return "News [id=" + id + ", name=" + name + ", createTime=" + createTime + ", updateTIme=" + updateTIme
				+ ", title=" + title + ", subtitle=" + subtitle + ", author=" + author + ", tag=" + tag + ", content="
				+ content + ", imgUrl=" + imgUrl + "]";
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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTIme() {
		return updateTIme;
	}

	public void setUpdateTIme(Date updateTIme) {
		this.updateTIme = updateTIme;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

}
