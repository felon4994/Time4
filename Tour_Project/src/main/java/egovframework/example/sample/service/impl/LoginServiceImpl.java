package egovframework.example.sample.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.MemberVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDAO loginDAO;
	
	public int authenticate(String id, String password) throws Exception {
		return loginDAO.authenticate(id, password);
	}
	
}
