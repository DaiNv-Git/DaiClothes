package Clothes.DAOUser;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Clothes.DTO.CartDTO;
import Clothes.DTO.ProductsDTO;
@Repository
public class CartDAO extends BaseDAO {
	@Autowired
	ProductDAO productdao = new ProductDAO();
	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) {
		CartDTO itemcart = new CartDTO();
		ProductsDTO product = productdao.FindProductByID(id);
		if (product != null && cart.containsKey(id)) {
			itemcart = cart.get(id);
			itemcart.setQuanty(itemcart.getQuanty() + 1);
			itemcart.setTotalPrice(itemcart.getQuanty() * itemcart.getProduct().getPrice());
		} else {
			itemcart.setProduct(product);
			itemcart.setQuanty(1);
			itemcart.setTotalPrice(product.getPrice());
		}
		cart.put(id, itemcart);
		return cart;
	}
	public HashMap<Long, CartDTO> EditCart(long id, int quanty, HashMap<Long, CartDTO> cart) {
		CartDTO itemcart = new CartDTO();
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			itemcart = cart.get(id);
			itemcart.setQuanty(quanty);
			itemcart.setTotalPrice(quanty * itemcart.getProduct().getPrice());
			
		}
		cart.put(id, itemcart);
		return cart;
	}
	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	public int totalQuanty(HashMap<Long, CartDTO> cart) {
		int totalQuanty = 0;
		for (Map.Entry<Long, CartDTO> itemcart : cart.entrySet()) {
			totalQuanty += itemcart.getValue().getQuanty();

		}
		return totalQuanty;
	}
	public double totalPrice(HashMap<Long, CartDTO> cart) {
		double totalPrice = 0;
		for (Map.Entry<Long, CartDTO> itemcart : cart.entrySet()) {
			totalPrice += itemcart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}
