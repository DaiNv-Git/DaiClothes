package Clothes.ModelUser;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides> {
	@Override
	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides slides = new Slides();
		slides.setId(rs.getInt("Sid"));
		slides.setImage(rs.getString("image"));
		slides.setTitle(rs.getString("title"));
		slides.setContent(rs.getString("content"));
		slides.setId(rs.getInt("sale"));
		return slides;
	}

}
