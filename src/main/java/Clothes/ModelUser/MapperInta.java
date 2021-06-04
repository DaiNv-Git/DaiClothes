package Clothes.ModelUser;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperInta implements RowMapper<IntaModel>{

	@Override
	public IntaModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		IntaModel inta = new IntaModel();
		inta.setIid(rs.getInt("Iid"));
		inta.setName(rs.getString("name"));
		inta.setImage(rs.getString("image"));
		return inta;
	}

}
