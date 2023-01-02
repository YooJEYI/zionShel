package jeyi.shion.dog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StroyController {


	// 파일 업로드에 대한 부분 끝
	@RequestMapping(value = "/storyList", method = RequestMethod.GET)
	public String storyList() {
		return "dogs";
	}
		

}
