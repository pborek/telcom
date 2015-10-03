package com.borek.telecom.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.borek.telecom.service.AccountService;
import com.borek.telecom.vos.AccountVo;

/**
 * @author Piotr Borek
 *
 */
@Controller
@RequestMapping(value = "/accountService")
public class AccountWeb {

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/addAccount", method = RequestMethod.POST)
    public String addAccount(@RequestBody AccountVo accountVo) {

	accountService.addAccount(accountVo);
	return "redirect:/accountService/account?id=" + accountVo.getId();
    }

    @RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
    public String updateAccount(@RequestBody AccountVo accountVo) {

	accountService.updateAccount(accountVo);
	return "redirect:/accountService/accounts";
    }

    @RequestMapping(value = "/deleteAccount", method = RequestMethod.DELETE)
    public String deleteAccount(@RequestBody AccountVo accountVo) {

	accountService.deleteAccount(accountVo);
	return "redirect:/accountService/accounts";
    }

    @RequestMapping(value = "/account", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public @ResponseBody AccountVo getAccountById(
	    @RequestParam(value = "id") String id) {

	// Integer foo = Integer.parseInt(id);
	return accountService.getAccountById(id);

    }

    @RequestMapping(value = "/accounts", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public @ResponseBody List<AccountVo> getAccounts() {

	List<AccountVo> listOfAccounts = accountService.getAccounts();
	return listOfAccounts;

    }

}
