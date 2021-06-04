package Clothes.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import com.mysql.cj.Session;

import Clothes.ModelUser.Users;
import Clothes.ServiceUser.AccountServiceImpl;

@Controller
public class UserController extends BaseController{
	@Autowired
	AccountServiceImpl accountServlet = new AccountServiceImpl();
@RequestMapping(value="/dang-ky",method = RequestMethod.GET)
public ModelAndView Register() {
	_mvShare.setViewName("user/account/dangky"); 
	_mvShare.addObject("user",new Users());
	return _mvShare;
}
@RequestMapping(value="/dang-ky",method = RequestMethod.POST)
public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
	int count = accountServlet.AddAccount(user);
	if(count>0) {
		_mvShare.addObject("satus","Đăng Ký Tài Khoản Thất Bại");
	}else {
		_mvShare.addObject("satus","Đăng Ký Tài Khoản Thành Công");
	}
// _mvShare.addObject("status",true);
	_mvShare.setViewName("user/account/dangky");
	return _mvShare;
}
@RequestMapping(value="/dang-nhap",method = RequestMethod.POST)
public ModelAndView Login(@ModelAttribute("user") Users user) {
 boolean check = accountServlet.CheckAccount(user);
	if(check) {
		_mvShare.setViewName("redirect:trang-chu");

	}else {
		_mvShare.addObject("statuslogin","Ngu Dot");

	}
		return _mvShare;
}
}