package com.java.member.dao;

import com.java.member.dto.MemberDto;

public interface MemberDao {
	
	public int memberInsert(MemberDto memberDto);

	public int memberSelect(MemberDto memberDto);
}
