package com.callor.score.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class StudentVO {

	private String st_num;	//	CHAR(5
	private String st_name;	//	varchar(20)		
	private String st_dept;	//	varchar(20)		
	private int st_grade;	//	INT		
	private String st_tel;	//	VARCHAR(15)		
	private String st_addr;	//	varchar(125)		

}
