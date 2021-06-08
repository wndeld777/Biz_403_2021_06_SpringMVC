package com.callor.jdbc.service;

/*
 * Servlet 에서는 Controller 에서 요청을 받아
 * DBMS를 핸들링하는 Code를 Service가 담고 있었다
 * 
 * Spring-MVC 프로젝트에서는
 * Dao라는 새로운 개념이 시작된다
 * 
 * Dao는 보통 한 table에 대한 CRUD를 구현하는 인터페이스, 클래스
 * 
 * 프로젝트에서 다수의(2개이상) table이 존재하면
 * 더불어 다수의 Dao가 생성된다
 * 
 * 어떤 기능을 수행하기 위해서 한 테이블에 대해서 수행되는 경우도 있지만
 * 다수의 table을 연계하여 기능이 수행되는 경우가 더 많아 지게 된다
 * 
 * 이때 Service 인터페이스와 클래스는 다수의 table을 연계하여
 * 수행되는 기능을 맡아 처리하는 역할을 한다
 * 
 * Spirng-MVC 프로젝트에서 Service 의 역할을
 * Business Logic 이라고 한다
 */
public interface RentService {

	public void viewBookAndComp();
}
