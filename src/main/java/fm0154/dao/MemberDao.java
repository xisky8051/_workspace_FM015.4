package fm0154.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import fm0154.model.Member;

@SuppressWarnings("deprecation")
public class MemberDao {

	// 建立存放示範資料之容器
	private static final List<Member> members = new ArrayList<>();

	// 建立示範資料
	static {
		members.add(new Member(1, "Wendy", "wendy.yang@gmail.com", new Date(19, 10, 1, 9, 45),
				new Date(21, 3, 1, 10, 22), "0921551249", "Do!ng123"));
		members.add(new Member(2, "鮭魚", "sonia.chang@gmail.com", new Date(19, 10, 7, 22, 1), new Date(21, 2, 6, 11, 1),
				"0937951249", "Do!ng123"));
		members.add(new Member(3, "海綿寶寶", "ann.chen@gmail.com", new Date(19, 11, 18, 15, 5), new Date(21, 3, 7, 9, 17),
				"0910772249", "Do!ng123"));
		members.add(new Member(4, "管理員", "rock.lin@gmail.com", new Date(20, 1, 5, 6, 45), new Date(21, 2, 1, 11, 50),
				"0989162337", "Do!ng123"));
	}

	// 外部取得示範資料用之呼叫方法
	public static List<Member> getAllMembers() {
		return members;
	}

	public static void addMember(Member m) {
		members.add(m);
	}
	
}
