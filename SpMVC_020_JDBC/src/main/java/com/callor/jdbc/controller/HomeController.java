package com.callor.jdbc.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.jdbc.pesistance.BookDao;
import com.callor.jdbc.service.RentService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class HomeController {
	
	// String.properties 파일에 설정된 속성값 가져와서 변수에 setting
	@Value("${user.name}")
	protected String user_name;
	@Value("${user.email}")
	protected String user_email;
	
	/*
	 * 보편적인 Spring 에서 bean을 사용하는 코드
	 * @Autowired
	 * private BookDao bookdao
	 * 이 코드에서 메모리 leak(누수)현상이 보고되어
	 * 다음의 코드를 권장한다.
	 */
	// protected final BookDao bookDao;
	protected final RentService rentService;
	public HomeController(RentService rentService) {
		this.rentService = rentService;
	}
	
	/*
	 * 사용자에게 Response 를 할때
	 * forward 방법과 redirect 방법이 있다
	 * 
	 * forwarding은 service 등등에서 생성한(조회한) 데이터를
	 * *.jsp 파일과 Rendering 하여 사용자에게 HTML 코드로 전송 한다
	 * 
	 * service 등등에서 생성한 데이터는 Model 객체에 addAttribute() method를 사용하여 데이터를 만들고
	 * ...
	 * 
	 * class Spring___{
	 * 	main(){
	 * 		HomeController hController = new HomeController();
	 * 		Locale locale = new Locale();
	 * 		Model model = new Model();
	 * 		String url = hController.home(locale, model)
	 * 
	 * 		if(!url.contains("redirect")){
	 * 			randering(url, model);
	 *			} 				
	 * 		}
	 * }
	 */
	// spring 이 home method를 호출해서 매개변수를 전달해주면 home 에서 값을 변경하고 다시 보내준다 (위의 코드가 존재할것이다)
	// 보충설명 : Main 클래스
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		log.debug("Usern Name:{}", user_name);
		log.debug("Usern Email:{}", user_email);
		
		/*
		 * 매개변수로 전달받은 Model class type 변수인 model에
		 * 속성을 하나 추가한다.
		 * 속성의 이름은 user 이며, 값은 user_name에 담긴 값이다
		 */
		model.addAttribute("user",user_name);
		rentService.viewBookAndComp();
		
		return "home";
	}
	
}
