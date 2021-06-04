package Clothes.ServiceUser;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Clothes.DAOUser.ProductDAO;
import Clothes.DTO.ProductsDTO;
@Service
public class categoryService implements IcategoryService{
	@Autowired 
	private ProductDAO productdao;
	
	public List<ProductsDTO> getDataProductPaginates(int CId,int start, int totalPage) {
		return productdao.getDataProductByPaginates(CId,start,totalPage);
	}
	
	public List<ProductsDTO>GetAllProductByID(int CId) {
		
		return productdao.getAllproductById(CId);
	}
}
