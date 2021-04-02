package fm0154.dao;

import javax.validation.constraints.NotEmpty;

public class SendMailRequest {

	@NotEmpty
	private String subject;

	@NotEmpty
	private String content;

	@NotEmpty
	private String[] receivers;

	public SendMailRequest(@NotEmpty String subject, @NotEmpty String content, @NotEmpty String ... receivers) {
		super();
		this.subject = subject;
		this.content = content;
		this.receivers = receivers;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String[] getReceivers() {
		return receivers;
	}

	public void setReceivers(String[] receivers) {
		this.receivers = receivers;
	}

}
