package Clothes.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Clothes.ServiceUser.IDetailService;
@Controller
public class HomeController extends BaseController {
	@Autowired
	 private IDetailService _detailservice;
	@RequestMapping(value = { "/", "trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		_mvShare.addObject("slides", _HomeService.getDataSlide());	
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.addObject("inta", _HomeService.getDataInta());
		_mvShare.addObject("products", _HomeService.getDataProduct());
		_mvShare.addObject("nuproduct", _HomeService.getDataProductNu());
		_mvShare.addObject("namproduct", _HomeService.getDataProductNam());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	public ModelAndView ModelAndViewDetail(@PathVariable long id) {
		_mvShare.setViewName("user/products/Detail");
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.addObject("detail", _detailservice.getProductByID(id));
		return _mvShare;
	}
}
