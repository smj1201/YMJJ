package com.java.member.service;

import org.springframework.web.servlet.ModelAndView;

public interface MemberService {
	public void memberJoinOk(ModelAndView mav);
	
	public void memberIdCheck(ModelAndView mav);
}
