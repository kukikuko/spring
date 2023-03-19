package com.example.demo.repository.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.domain.Country;

@Mapper
public interface CountryMapper {

	public List<String> selectNation();
	
	public List<String> selectCity(@Param("nation") String nation);
}
