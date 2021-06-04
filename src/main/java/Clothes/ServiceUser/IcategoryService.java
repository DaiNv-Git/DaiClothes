package Clothes.ServiceUser;

import java.util.List;

import org.springframework.stereotype.Service;

import Clothes.DTO.ProductsDTO;

@Service
public interface IcategoryService {
	public List<ProductsDTO> GetAllProductByID(int	CId);
public List<ProductsDTO> getDataProductPaginates(int CId,int start , int totalPage);
}
