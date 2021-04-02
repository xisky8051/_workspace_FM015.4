package fm0154.service;

import java.util.List;

import fm0154.dao.MemberDao;
import fm0154.model.Member;

public class MemberService {

	public static Integer getMembersSize() {
		return MemberDao.getAllMembers().size();
	}
	
	public static void addMember(Member m) {
		MemberDao.addMember(m);
	}
	
	public static List<Member> getAllMembers() {
		return MemberDao.getAllMembers();
	}
	
}
