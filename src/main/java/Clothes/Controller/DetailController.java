package Clothes.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import Clothes.ServiceUser.IDetailService;


@Controller
public class DetailController extends BaseController{
	@Autowired
	 private IDetailService _detailservice;
	@RequestMapping(value={"detail-Product/{id}"})
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/Detail");
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.addObject("detail", _detailservice.getProductByID(id));
		_mvShare.addObject("detailByCId", _detailservice.getProductByIDCategory(_detailservice.getProductByID(id).getCategoryId()));
		return _mvShare;
	}
}
