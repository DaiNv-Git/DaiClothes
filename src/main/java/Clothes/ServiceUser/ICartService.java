package Clothes.ServiceUser;

import java.util.HashMap;
import org.springframework.stereotype.Service;
import Clothes.DTO.CartDTO;

@Service
public interface ICartService {
	public HashMap<Long, CartDTO> AddCart(long id,HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> EditCart(long id,int quanty,HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart);
	public int totalQuanty(HashMap<Long, CartDTO> cart) ;
	public double totalPrice(HashMap<Long, CartDTO> cart);
}
