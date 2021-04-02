package fm0154.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class Member {

	// 主鍵 id
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	// 暱稱
	@NotBlank
	private String name;
	// 電子郵件
	@Email
	@NotBlank
	private String email;
	// 建立時間
	private Date createTime;
	// 最後上線時間
	private Date lastOnlineTime;
	// 行動電話
	@NotBlank
	private String phone;
	// 密碼
	@NotBlank
	private String password;

	//
	//
	// 以下建構子(2個)、Getter/Setter 由 Eclipse 自動產生
	//
	//
	public Member() {
		super();
	}

	public Member(Integer id, @NotBlank String name, @Email @NotBlank String email, Date createTime,
			Date lastOnlineTime, @NotBlank String phone, @NotBlank String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.createTime = createTime;
		this.lastOnlineTime = lastOnlineTime;
		this.phone = phone;
		this.password = password;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", email=" + email + ", createTime=" + createTime
				+ ", lastOnlineTime=" + lastOnlineTime + ", phone=" + phone + ", password=" + password + ", getId()="
				+ getId() + ", getName()=" + getName() + ", getEmail()=" + getEmail() + ", getCreateTime()="
				+ getCreateTime() + ", getLastOnlineTime()=" + getLastOnlineTime() + ", getPhone()=" + getPhone()
				+ ", getPassword()=" + getPassword() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastOnlineTime() {
		return lastOnlineTime;
	}

	public void setLastOnlineTime(Date lastOnlineTime) {
		this.lastOnlineTime = lastOnlineTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}