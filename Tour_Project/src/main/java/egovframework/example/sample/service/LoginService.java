package egovframework.example.sample.service;

import egovframework.example.sample.service.MemberVO;

public interface LoginService {
	
	public int authenticate(String id, String password) throws Exception ;	
}