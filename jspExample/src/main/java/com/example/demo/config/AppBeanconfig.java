package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.demo.domain.Country;
import com.example.demo.repository.BoardRepository;
import com.example.demo.repository.CountryRepository;
import com.example.demo.repository.mybatis.BoardMapper;
import com.example.demo.repository.mybatis.CountryMapper;
import com.example.demo.repository.mybatis.MybatisBoardRepository;
import com.example.demo.repository.mybatis.MybatisCountryRepository;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class AppBeanconfig {

	private final BoardMapper boardMapper;
	private final CountryMapper countryMapper;
	
	@Bean
	public BoardRepository boardRepository() {
		return new MybatisBoardRepository(boardMapper);
	}
	
	@Bean
	public CountryRepository countryRepository() {
		return new MybatisCountryRepository(countryMapper);
	}
}
