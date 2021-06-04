package Clothes.ServiceUser;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Clothes.DAOUser.CartDAO;
import Clothes.DTO.CartDTO;
@Service
public class CartService implements ICartService{
	@Autowired
	CartDAO cartdao = new CartDAO();
	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) {
		// TODO Auto-generated method stub
		return cartdao.AddCart(id, cart);
	}
	public HashMap<Long, CartDTO> EditCart(long id, int quanty, HashMap<Long, CartDTO> cart) {
		// TODO Auto-generated method stub
		return cartdao.EditCart(id, quanty, cart);
	}

	

	public int totalQuanty(HashMap<Long, CartDTO> cart) {
		// TODO Auto-generated method stub
		return cartdao.totalQuanty(cart);
	}

	@Override
	public double totalPrice(HashMap<Long, CartDTO> cart) {
		// TODO Auto-generated method stub
		return cartdao.totalPrice(cart);
	}
	@Override
	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart) {
		// TODO Auto-generated method stub
		return cartdao.DeleteCart(id,  cart);
	}
	
}
