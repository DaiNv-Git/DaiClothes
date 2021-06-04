package Clothes.ServiceUser;
import java.util.List;

import org.springframework.stereotype.Service;
import Clothes.DTO.ProductsDTO;

@Service
public interface IDetailService {
public  ProductsDTO getProductByID(long id);
public List<ProductsDTO> getProductByIDCategory(int id);
}
