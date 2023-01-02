package jeyi.shion.home;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index(HttpSession session) {
		
		Boolean loginCk = (Boolean) session.getAttribute("admin");
		
		return "main";
	}

	@GetMapping("/introduce")
	public String introduce () {
		return "introduce";
	}

	@GetMapping("/notice")
	public String notice () {
		return "Notice";
	}

	@GetMapping("/volunteer")
	public String volunteer () {
		return "volunteer";
	}

	@GetMapping("/support")
	public String support () {
		return "support";
	}
	
	@GetMapping("/dogs")
	public String dogs () {
		return "dogs";
	}
	
	@GetMapping("/admin/login")
	public String login () {
		return "login";
	}

	@PostMapping("/admin/login")
	public String loginPost (Model model, @RequestParam String memId, String memPw, HttpServletRequest request) {
	
		if (!memId.equals("zion79") || !memPw.equals("zion79")) {
			return "login";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("admin", true);
		
		return "redirect:/";
	}
	
	
	
	@GetMapping("/insta")
	public String insta() throws IOException {
		
		String url = "https://www.youtube.com/channel/UCYmFnZfAmL9i13KxGu8XzIw/videos";
		Document doc =  Jsoup.connect(url).get();
		
		return "/insta";
		
	}
	
	@GetMapping("/monthView")
	public String monthView () {
		return "monthView";
	}

	
}
