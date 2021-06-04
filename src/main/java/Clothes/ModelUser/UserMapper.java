package Clothes.ModelUser;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<UserModel>{

	@Override
	public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserModel user = new UserModel();
		user.setId(rs.getLong("id"));
		user.setName(rs.getString("Name"));
		user.setPassword(rs.getString("password"));
		user.setDisplayName(rs.getString("DisplayName"));
		user.setAddress(rs.getString("address"));
		return user;
	}
	
}
