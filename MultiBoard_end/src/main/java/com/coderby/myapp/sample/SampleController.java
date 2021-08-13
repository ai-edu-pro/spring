package com.coderby.myapp.sample;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {

	@RequestMapping("/hello")
	public String hello(String name, Model model) {
		String result = "Hello~" + name;
		model.addAttribute("result", result);
		return "hello";  //WEB-INF/views/hello.jsp
	}
	
	@RequestMapping("/ajax/hello")
	public @ResponseBody String hello2(String name) {
		String result = "Hello ajax~" + name;
		return result; //결과가 뷰페이지를 통해 응답되지 않음, 문자열로 응답함
	}
	
}