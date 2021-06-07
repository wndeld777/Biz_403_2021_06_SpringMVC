package com.callor.jdbc.model;

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
public class CompVO {

	private String cp_code; //	CHAR(5)
	private String cp_title; //	NVARCHAR2(125)
	private String cp_ceo; //	NVARCHAR2(20)
	private String cp_tel; //	VARCHAR2(20)
	private String cp_addr; //	NVARCHAR2(125)
	private String cp_genre; //	NVARCHAR2(10)

}
