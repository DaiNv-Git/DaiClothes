package Clothes.DTO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDTOMapper implements RowMapper<ProductsDTO> {
	@Override
	public ProductsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDTO product = new ProductsDTO();
		product.setId_product(rs.getInt("id_product"));
		product.setName(rs.getString("Name"));
		product.setDescription(rs.getString("description"));
		product.setPrice(rs.getInt("price"));
		product.setOldPrice(rs.getInt("oldPrice"));
		product.setTitle(rs.getString("title"));
		product.setSize(rs.getString("size"));
		product.setColors(rs.getString("colors"));
		product.setImage(rs.getString("image"));
		product.setImage2(rs.getString("image2"));
		product.setImage3(rs.getString("image3"));
		product.setCategoryId(rs.getInt("categoryId"));
		product.setNewProduct(rs.getBoolean("newProduct"));
		product.setHighLight(rs.getBoolean("highLight"));
		product.setIdColor(rs.getInt("idColor"));
		product.setNamecolor(rs.getString("Namecolor"));
		product.setCreateAt(rs.getDate("createAt"));
		product.setUpdateteAt(rs.getDate("updateAt"));
		return product;
	}

}
