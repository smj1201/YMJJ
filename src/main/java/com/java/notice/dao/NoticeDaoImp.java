package com.java.notice.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NoticeDaoImp implements NoticeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
}
