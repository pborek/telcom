package com.borek.telecom.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.borek.telecom.entity.User;
import com.borek.telecom.service.AccountService;
import com.borek.telecom.service.UserService;
import com.borek.telecom.vos.AccountVo;
import com.borek.telecom.vos.UserVo;

@Controller
@RequestMapping(value = "/userService")
public class UserWeb {

	@Autowired
	private AccountService accountService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public @ResponseBody
	UserVo getUserById(@RequestParam(value = "id") String id) {
		Integer foo = Integer.parseInt(id);

		return userService.getUserById(id);

	}
	
    @RequestMapping(value= "/update", method = RequestMethod.POST)
    public String updateDoctor(@RequestBody UserVo UserVo){
    	System.out.println("dziaaj ");
    	System.out.println("post update request");
        userService.updateUser(UserVo);
        return "redirect:/userService/users";
    }
	
	
//	@RequestMapping(value= "/update/{id}", method = RequestMethod.POST)
//    public String updateUser(@PathVariable("id") String id, Model model){
//    	System.out.println("dziaaj ");
//    	System.out.println("post update request");
//    	 model.addAttribute("user", this.userService.getUserById(id));
//         model.addAttribute("listPersons", this.userService.getUsers());
//         return "user";
//    }

	@RequestMapping(value = "/users", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public @ResponseBody
	List<UserVo> getUsers() {

		System.out.println("siemanko");
		List<UserVo> listOfUsers = userService.getUsers();
		
		System.out.println("list Of users size : " + listOfUsers.size());
		return listOfUsers;

	}

	@RequestMapping(value = "/account", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public @ResponseBody
	AccountVo getAccountById(@RequestParam(value = "id") String id) {
		Integer foo = Integer.parseInt(id);
		
		

		return accountService.getAccountById(id);

	}

	@RequestMapping(value = "/accounts", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public @ResponseBody
	List<AccountVo> getAccounts() {

		System.out.println("siemanko");
		List<AccountVo> listOfAccounts = accountService.getAccounts();
		
		//System.out.println("list Of users size : " + listOfUsers.size());
		return listOfAccounts;

	}



	
	
	
	 @RequestMapping(value = "account1", method = RequestMethod.GET, produces
	 = "application/json;charset=utf-8")
	 public @ResponseBody
	 Integer getAccountById1(@RequestParam(value = "id") String id) {
	 Integer foo = Integer.parseInt(id);
	 Integer aa = accountService.getAccountById(id).getInternetMb();
	
	return aa; }

}
