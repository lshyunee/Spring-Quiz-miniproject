package com.lee.service;

import com.lee.domain.ImageVO;
import com.lee.domain.NewWordsVO;
import com.lee.domain.ProverbVO;

public interface TvnService {
	public ProverbVO getP();
	public ImageVO getI();
	public NewWordsVO getN();
}
