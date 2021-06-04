package Clothes.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Clothes.DTO.pageinatesDTO;
import Clothes.ServiceUser.PageinasService;
import Clothes.ServiceUser.categoryService;
@Controller
public class CategoryController extends BaseController{
	@Autowired
	 private categoryService categoryService;
	@Autowired
	private PageinasService paginatesService;
	private int totalProductPage = 3;
	@RequestMapping(value={"/sanpham/{CId}"},method = RequestMethod.GET)
	public ModelAndView product(@PathVariable String CId) {
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.setViewName("user/products/product");
		int totalData=categoryService.GetAllProductByID(Integer.parseInt(CId)).size();
		pageinatesDTO paginateInfor = paginatesService.getInforpaginates(totalData,totalProductPage, 1);
		_mvShare.addObject("idCategory",CId);
		_mvShare.addObject("paginateInfor",paginateInfor);
		_mvShare.addObject("productPaginates",categoryService.getDataProductPaginates(Integer.parseInt(CId),paginateInfor.getStart(),totalProductPage));
		return _mvShare;
	}
	@RequestMapping(value={"/sanpham/{CId}/{currentPage}"},method = RequestMethod.GET)
	public ModelAndView product(@PathVariable String CId, @PathVariable String currentPage) {
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.setViewName("user/products/product");
		int totalData=categoryService.GetAllProductByID(Integer.parseInt(CId)).size();
		pageinatesDTO paginateInfor = paginatesService.getInforpaginates(totalData,totalProductPage,Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory",CId);
		_mvShare.addObject("paginateInfor",paginateInfor);
		_mvShare.addObject("productPaginates",categoryService.getDataProductPaginates(Integer.parseInt(CId),paginateInfor.getStart(),totalProductPage));
		return _mvShare;
	}
}
