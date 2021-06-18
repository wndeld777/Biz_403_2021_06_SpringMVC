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
public class ScoreVO {

	private String sc_seq;//	BIGINT
	private String sc_stnum;//	CHAR(5)
	private String sc_sbcode;//	CHAR(8)
	private String sc_sum;//	INT
	private String sc_avg;//	INT

}
