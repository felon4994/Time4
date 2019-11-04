package egovframework.example.sample.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.MemberVO;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class LoginController {

	@Autowired
	private LoginService LoginService;

	//로그인 페이지
		@RequestMapping(value = "/LoginPage.do")
		public String tourLoginPage() throws Exception {	
			return "tour/loginPage";
		}

	@RequestMapping("/loginProcess.do")
	public String login(HttpServletRequest request, @RequestParam

("id") String id,
            @RequestParam("password") String password,ModelMap model) 

{
			
			MemberVO member = new MemberVO();
			member.setId(id);
			member.setPassword(password);;
			
			int memCheck = 0;
			String str = "";
			
			try{
				memCheck = LoginService.authenticate(id, password);
				if(memCheck == 1){ // login 됨
					
					str =  "redirect:/ManagerPage.do";
					request.getSession().setAttribute("Members", member);
					
				}else{
					
					str = "redirect:/LoginPage.do";
					
				}
			
			} catch (Exception e) {
				
				
			}
			
			return str;

}
	
}
