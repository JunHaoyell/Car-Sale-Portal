package lithan.project.carsaleportall.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lithan.project.carsaleportall.Entities.User;
import lithan.project.carsaleportall.Services.UserService;

@Controller
public class profileUpdateController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("profile")
	public String profile() {
		return "user-profile";
		
	}
	
	
    @GetMapping("/edit_form")
	public String editProfile(@RequestParam long id, Model model) {
    	System.out.println("Update user controller method");
		User user = userService.get(id);
		model.addAttribute("user", user);
		
		return "update-profile";
	}
    
	@PostMapping("save-profile")
	public String updateUserProfile (@ModelAttribute User user, Model model) {
		userService.save(user);
		return "";
	}
	

}
