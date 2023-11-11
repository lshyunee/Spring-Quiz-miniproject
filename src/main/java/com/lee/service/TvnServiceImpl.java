package com.lee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.domain.ImageVO;
import com.lee.domain.NewWordsVO;
import com.lee.domain.ProverbVO;
import com.lee.mapper.TvnMapper;

@Service
public class TvnServiceImpl implements TvnService {
	
	@Autowired
	private TvnMapper mapper;

	@Override
	public ProverbVO getP() {
		return mapper.getP();
	}

	@Override
	public ImageVO getI() {
		return mapper.getI();
	}

	@Override
	public NewWordsVO getN() {
		return mapper.getN();
	}
}
