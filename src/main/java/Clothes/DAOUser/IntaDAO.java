package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Clothes.ModelUser.IntaModel;
import Clothes.ModelUser.MapperInta;
@Repository
public class IntaDAO extends BaseDAO{
	public List<IntaModel> getDataInta(){
		List<IntaModel> inta = new ArrayList<IntaModel>();
		String sql = "select * from imageInta";
		inta = _jdbcTemplate.query(sql, new MapperInta());
		return  inta;
	}
}
