package Clothes.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Clothes.DTO.CartDTO;
import Clothes.ServiceUser.CartService;

@Controller
public class CartController extends BaseController {
	@Autowired
	private CartService cartService = new CartService();
	@RequestMapping(value ="gio-hang" )
	public ModelAndView Index() {
		_mvShare.addObject("slides", _HomeService.getDataSlide());	
		_mvShare.addObject("category", _HomeService.getDataCategory());
		_mvShare.addObject("inta", _HomeService.getDataInta());
		_mvShare.addObject("products", _HomeService.getDataProduct());
		_mvShare.setViewName("user/cart/ListCart");
		return _mvShare;
	}
	@RequestMapping(value =  "AddCart/{id}" )
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
		session.setAttribute("TotalPrice", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value = { "EditCart/{id}" })
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
//		cart= cartService.EditCart(id, quanty, cart);
//		session.setAttribute("Cart", cart);
//		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
//		session.setAttribute("TotalPrice", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value = { "Delete/{id}" })
	public String DetleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
		session.setAttribute("TotalPrice", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
}
