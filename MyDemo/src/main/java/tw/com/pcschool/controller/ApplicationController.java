package tw.com.pcschool.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.com.pcschool.model.User;
import tw.com.pcschool.repository.UserRepository;
import tw.com.pcschool.services.UserService;


@Controller
public class ApplicationController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/home")
	public String welcomepage(HttpServletRequest request) {
		request.setAttribute("model","MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("model","MODE_REGISTER");
		return "register";
	}
	
	@PostMapping("/home")
	public String registerUser(@ModelAttribute User user,BindingResult bindResult,HttpServletRequest request) {
		
		userService.saveMyUser(user);
		request.setAttribute("model", "MODE_HOME");
	
		return "welcomepage";
	}
	
	@GetMapping("/show-user")
	public String showAllUser(HttpServletRequest request) {
		request.setAttribute("user",userService.showAllUser());
		request.setAttribute("model", "MODE_ALLUSER");
		return "alluser";
	}
	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id,HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("user",userService.showAllUser());
		request.setAttribute("model", "MODE_ALLUSER");
		return "alluser";
	}
	
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("model", "MODE_UPDATEUSER");
		return "edit";
	}
	
	@RequestMapping("/update-user")
	public String updateUser(@RequestParam int id,@ModelAttribute User user,BindingResult bindResult,HttpServletRequest request) {
		
		userService.saveMyUser(user);
		request.setAttribute("user",userService.showAllUser());
		//request.setAttribute("model", "MODE_ALLUSER");
	
		return "update";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("model", "MODE_LOGINUSER");
		return "login";
	}
	
	@RequestMapping("/login-error")
	public String loginUser(@ModelAttribute User user,HttpServletRequest request) {
		if(userService.UsernameAndPassword(user.getUsername(),user.getPassword())!=null) {
			return "login-correct";
		}else {
			request.setAttribute("error", "請輸入正確的帳號或密碼");
			request.setAttribute("model","MODE_LOGINUSER");
			return "login";
		}
	}
}



















