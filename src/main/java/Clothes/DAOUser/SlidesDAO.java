package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import Clothes.ModelUser.MapperSlides;
import Clothes.ModelUser.Slides;
@Repository
public class SlidesDAO extends BaseDAO{

	public List<Slides> getDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "Select * from slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}	
}
