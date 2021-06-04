package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import Clothes.ModelUser.Categorys;
import Clothes.ModelUser.MapperCategory;
import Clothes.ModelUser.MapperSlides;
import Clothes.ModelUser.Slides;
@Repository
public class CategoryDAO extends BaseDAO{
		public List<Categorys> getDataCategory(){
		List<Categorys> category = new ArrayList<Categorys>();
		String sql = "Select * from category";
		category = _jdbcTemplate.query(sql, new MapperCategory());
		return category;
	}	
}
