package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import Clothes.DTO.ProductDTOMapper;
import Clothes.DTO.ProductsDTO;
@Repository
public class ProductDAO extends BaseDAO {
	private final Boolean YES = true;
	private final Boolean NO = false;
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select   ");
		sql.append(" p.id as id_product ");
		sql.append(",p.name ");
		sql.append(",p.description");
		sql.append(",p.price ");
		sql.append(",p.oldPrice ");
		sql.append(",p.title ");
		sql.append(",p.size ");
		sql.append(",p.colors ");
		sql.append(",p.image,p.image2 ");
		sql.append(",p.image3 ");
		sql.append(",p.categoryId ");
		sql.append(",p.newProduct ");
		sql.append(",p.highLight ");
		sql.append(",c.IdColor as idColor ");
		sql.append(",c.name as Namecolor ");
		sql.append(",p.createAt ");
		sql.append(",p.updateAt from product as p inner join colors as c on p.id = c.idProduct ");
		return sql;
	}
	private String sqlProduct(Boolean newProduct, Boolean highLight) {
		StringBuffer sql = sqlString();
		sql.append(", group by p.id ");
		sql.append(",c.idProduct");
		sql = sqlString();
		return sql.toString();
	}
	private StringBuffer sqlProductById(int CId) {
		StringBuffer sql = sqlString();
		sql.append("where 1 = 1 ");
		sql.append(" and CategoryId = " + CId + " ");
		return sql;
	}
	private String sqlProductByPageinates(int CId,int start, int totalPage) {
		StringBuffer sql = sqlProductById(CId);
		sql.append(" Limit " +  start + ", " + totalPage);
		return sql.toString();
	}
	public List<ProductsDTO> getDataProduct() {
		String sql = sqlProduct(YES, NO);
		List<ProductsDTO> listProduct = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return listProduct;
	}
	public List<ProductsDTO> getAllproductById(int CId) {
		String sql = sqlProductById(CId).toString();
		List<ProductsDTO> listProduct = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return listProduct;
	}
	public List<ProductsDTO> getDataProductByPaginates(int CId,int start, int totalPage) {
		StringBuffer sqlGetDataByID = 	sqlProductById(CId);
		List<ProductsDTO> listProductByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductDTOMapper());
		List<ProductsDTO> listProduct =new ArrayList<ProductsDTO>();
		if(listProductByID.size() > 0) {
			String sql = sqlProductByPageinates(CId,start, totalPage);
			listProduct = _jdbcTemplate.query(sql, new ProductDTOMapper());
		}
		return listProduct;
	}
	private String sqlDetailById(long id) {
		StringBuffer sql = sqlString();
		sql.append("where 1 = 1 ");
		sql.append(" and p.id = " + id + " ");
		sql.append(" LIMIT 1 ");
		return sql.toString();
	}
	public List<ProductsDTO> getProductByID(long id) {
		String sql = sqlDetailById(id);
		List<ProductsDTO> listDetail = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return listDetail;
	}
	
	public ProductsDTO FindProductByID(long id) {
		String sql = sqlDetailById(id);
		ProductsDTO product = _jdbcTemplate.queryForObject(sql, new ProductDTOMapper());
		return product;
	}
}
