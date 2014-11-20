package fr.treeptik.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import fr.treeptik.model.User;
import fr.treeptik.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/add.do")
	public ModelAndView intiSaveForm() {

		User user = new User();
		// userService.addUser(user);
		return new ModelAndView("add.jsp", "user", user);
	}

	@RequestMapping(value = "/save.do", method = RequestMethod.POST)
	public ModelAndView save(User user) {
		userService.addUser(user);

		return new ModelAndView("redirect:show.do?userId=" + user.getId());
	}

	@RequestMapping(value = "/show.do", method = RequestMethod.GET)
	public ModelAndView show(Integer userId) {

		System.out.println("USSER ID " + userId);

		User user = userService.getUserById(userId);

		return new ModelAndView("show.jsp", "user", user);
	}

	@RequestMapping(value = "/users.do", method = RequestMethod.GET)
	public ModelAndView list() {
		List<User> users = userService.listusers();
		for (User user : users) {
			System.out.println(user.getId());
		}
		return new ModelAndView("list.jsp", "users", users);

	}
}
