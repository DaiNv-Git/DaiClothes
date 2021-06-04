package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

import Clothes.ModelUser.MapperProduct;
import Clothes.ModelUser.ProductModel;
@Repository
public class ProductNuDAO extends BaseDAO{
public List<ProductModel> getDataProductNu(){
	List<ProductModel> nu = new ArrayList<ProductModel>();
	String sql ="select  * from product where categoryId='4' limit 4 ";
	nu = _jdbcTemplate.query(sql, new MapperProduct());
	return nu;
}
}
