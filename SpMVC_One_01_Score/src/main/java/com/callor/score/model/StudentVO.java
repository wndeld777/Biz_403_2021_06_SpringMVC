package com.callor.score.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class StudentVO {

	private String st_num;//	CHAR(8)
	private String st_name;//	VARCHAR(20)
	private String st_tel;//	VARCHAR(20)
	private String st_grade;//	INT
	private String st_sname;//	VARCHAR(20)


}
