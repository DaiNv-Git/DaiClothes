package Clothes.ModelUser;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperCategory implements RowMapper<Categorys>{
	@Override
	public Categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categorys category = new Categorys();
		category.setCId(rs.getInt("CId"));
		category.setCName(rs.getString("CName"));
		return category;
	}

}
