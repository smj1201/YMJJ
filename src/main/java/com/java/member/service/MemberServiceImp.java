package com.java.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.java.aop.LogAspect;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

@Component
public class MemberServiceImp implements MemberService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public void memberJoinOk(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		MemberDto memberDto=(MemberDto) map.get("memberDto");
		
		int check=memberDao.memberInsert(memberDto);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		
		mav.addObject("check", check);
		mav.setViewName("member/joinOk");
	}
		
	@Override
	public void memberIdCheck(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		MemberDto memberDto=(MemberDto) map.get("memberDto");
				
		int check=memberDao.memberSelect(memberDto);
		LogAspect.logger.info(LogAspect.LogMsg + check);
				
		mav.addObject("check", check);
		mav.setViewName("member/idCheck");
	}
}

