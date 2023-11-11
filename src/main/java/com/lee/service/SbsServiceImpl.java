package com.lee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.domain.CommonVO;
import com.lee.domain.FourWordVO;
import com.lee.domain.UnitVO;
import com.lee.mapper.SbsMapper;

@Service
public class SbsServiceImpl implements SbsService {
	
	@Autowired
	private SbsMapper mapper;
	
	@Override
	public CommonVO getC() {
		return mapper.getC();
	}

	@Override
	public FourWordVO getF() {
		return mapper.getF();
	}

	@Override
	public UnitVO getU() {
		return mapper.getU();
	}

}
