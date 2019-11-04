/*
* Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.web;

import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.User_BorderService;
import egovframework.example.sample.service.User_BorderVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

/**
 * @Class Name : BController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class UserBorderController {
	
	/** TourService */
	@Resource(name = "userborderService")
	private User_BorderService userborderService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "Big_CityList"
	 * @exception Exception
	 */
	@RequestMapping(value = "/UserBorderList.do")
	public String UserBorderList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {

		/** EgovPropertyService.sample */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> userborderList = userborderService.selectUser_BorderList(searchVO);
		model.addAttribute("resultList", userborderList);

		int totCnt = userborderService.selectUser_BorderListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "tour/listPage";
	}
	
	//@RequestMapping(value = "/UserBorderView.do")
	//public String UserBorderView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		//model.addAttribute("userborderVO", new User_BorderVO());
		//return "tour/UserBorderView";
	//}
	/**
	 * 글 등록 화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "deptSampleRegister"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addUserBorderView.do")
	public String addUser_BorderView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("User_BorderVO", new User_BorderVO());
		return "tour/User_BorderRegister";
	}
	
	/**
	 * 글을 등록한다.
	 * @param sampleVO - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/deptList.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addUserBorder.do")
	public String addUser_Border(@ModelAttribute("searchVO") SampleDefaultVO searchVO, User_BorderVO userborderVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
		// Server-Side Validation
		//beanValidator.validate(userborderVO, bindingResult);
		//if (bindingResult.hasErrors()) {
		//	model.addAttribute("userborderVO", userborderVO);
		//	return "tour/User_BorderRegister";
		//}

		userborderService.insertUser_Border(userborderVO);
		status.setComplete();
		return "forward:/UserBorderList.do";
	}
	

	/**
	 * 글 수정화면을 조회한다.
	 * @param id - 수정할 글 id
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovSampleRegister"
	 * @exception Exception
	 */
	@RequestMapping("/updateUserBorderView.do")
	public String updateUserBorderView(@RequestParam("selectedUserNo") String userno, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		
		
		User_BorderVO userborderVO = new User_BorderVO();
		userborderVO.setUserno(userno);
		// 변수명은 CoC 에 따라 sampleVO
	//	model.addAttribute(selectUser_Border(userborderVO, searchVO));
		model.addAttribute("User_BorderVO", selectUser_Border(userborderVO, searchVO));
		
		return "tour/User_BorderRegister";
	}

	/**
	 * 글을 조회한다.
	 * @param sampleVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("sampleVO") - 조회한 정보
	 * @exception Exception
	 */
	public User_BorderVO selectUser_Border(User_BorderVO userborderVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return userborderService.selectUser_Border(userborderVO);
	}

	/**
	 * 글을 수정한다.
	 * @param sampleVO - 수정할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping("/updateUserBorder.do")
	public String updateUserBorder(@ModelAttribute("searchVO") SampleDefaultVO searchVO, User_BorderVO userborderVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		beanValidator.validate(userborderVO, bindingResult);

		if (bindingResult.hasErrors()) {
			model.addAttribute("userborderVO", userborderVO);
			return "tour/User_BorderRegister";
		}

		userborderService.updateUser_Border(userborderVO);
		status.setComplete();
		return "forward:/UserBorderList.do";
	}

	/**
	 * 글을 삭제한다.
	 * @param sampleVO - 삭제할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping("/deleteUserBorder.do")
	public String deleteUserBorder(User_BorderVO userborderVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO, SessionStatus status) throws Exception {
		userborderService.deleteUser_Border(userborderVO);
		status.setComplete();
		return "forward:/UserBorderList.do";
	}

}