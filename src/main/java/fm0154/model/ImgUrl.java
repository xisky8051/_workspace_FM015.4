package fm0154.model;

public class ImgUrl {

	private String url;

	public ImgUrl(String url) {
		super();
		this.url = url;
	}

	public ImgUrl() {
		super();
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "ImgUrl [url=" + url + "]";
	}

}
