package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Clothes.ModelUser.MapperProduct;
import Clothes.ModelUser.ProductModel;
@Repository
public class ProductNamDAO extends BaseDAO{
	public List<ProductModel> getDataProductNam(){
		List<ProductModel> nam = new ArrayList<ProductModel>();
		String sql ="select  * from product where categoryId='3' limit 5 ";
		nam = _jdbcTemplate.query(sql, new MapperProduct());
		return nam;
	}
}
