package Clothes.ModelUser;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProduct implements RowMapper<ProductModel>{

	@Override
	public ProductModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductModel product = new ProductModel();
		product.setId(rs.getInt("id"));
		product.setName(rs.getString("name"));
		product.setDescription(rs.getString("description"));
		product.setPrice(rs.getString("price"));
		product.setoldPrice(rs.getInt("oldPrice"));
		product.setTitle(rs.getString("title"));
		product.setSize(rs.getString("size"));
		product.setColors(rs.getString("colors"));
		product.setImage(rs.getString("image"));
		product.setImage2(rs.getString("image2"));
		product.setImage3(rs.getString("image3"));
		product.setCategoryId(rs.getInt("categoryId"));
		return product;
	}

}
