package Clothes.ServiceUser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Clothes.DAOUser.ProductDAO;
import Clothes.DTO.ProductsDTO;
	
@Service
public class DetailService implements IDetailService{
	@Autowired
	ProductDAO product = new ProductDAO();
	@Override
	public ProductsDTO getProductByID(long id) {
	List<ProductsDTO> list = product.getProductByID(id);
		return list.get(0);
	}
	@Override
	public List<ProductsDTO> getProductByIDCategory(int id) {
		return product.getAllproductById(id);
	}

}
