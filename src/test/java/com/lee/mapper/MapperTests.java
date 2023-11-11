package com.lee.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) // 이걸로 실행할 것이라는 것
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") // (웹어플리케이션 이름은 없어도 됨)
@Log4j
public class MapperTests {

	@Autowired
	private TvnMapper mapper;
	
	@Autowired
	private SbsMapper smapper;
	
	@Test
	public void getP() {
		log.info("=========");
		mapper.getP();
	}
	
	@Test
	public void getF() {
		log.info("=========");
		smapper.getF();
	}

}
