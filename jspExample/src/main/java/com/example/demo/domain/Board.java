package com.example.demo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board {
	
	private Integer no;
	private String id;
	private String name;
	private String nation;
	private String city;
	private String gender;
	private Date saveTime;
	
}
