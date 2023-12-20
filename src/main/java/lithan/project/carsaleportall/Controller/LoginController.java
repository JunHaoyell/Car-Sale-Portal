package lithan.project.carsaleportall.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lithan.project.carsaleportall.Entities.User;
import lithan.project.carsaleportall.Services.UserService;


@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

	//Load the Login Page
    @GetMapping("cus_login_page")
    public String onLogin() {
        return "login";
    }


    //For Login Error
    @GetMapping("login_error")
    public String onLoginError(Model model) {
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
        return "login";
    }
    
   
    //For Register
    @GetMapping("new")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("new Login Controller");
		User user = new User();
		model.put("user", user);
		return "new_user";
	}
    
    //Save register user to database
	@PostMapping("save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "new_user";
	}
	
	
    @GetMapping("users")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_user";
    }
    
    
    @GetMapping("about")
    public String about() {
        return "aboutUs";
    }
    
    
    @GetMapping("contact")
    public String contact() {
        return "contactUs";
    }
    
    
    //user details view
    //To display car detail
    @GetMapping("user_detail")
	public ModelAndView viewUser(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("user_detail");
		User user = userService.get(id);
		mav.addObject("user", user);
	return mav;
	}

	//To display update FORM with old data - user
    @GetMapping("edit_u")
	public String editUserForm(@RequestParam long id, Model model) {
    	System.out.println("Update user controller method");
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "update_user";
	}
   
    
	@PostMapping("save1")
	public String updateUser(@ModelAttribute User user, Model model) {
		userService.save(user);
		return "redirect:users";
	}
	


	//Delete process -user
	@GetMapping("delete_u")
	public String deleteUser(@RequestParam long id) {
		userService.delete(id);
		return "redirect:/users";		
	}

}
