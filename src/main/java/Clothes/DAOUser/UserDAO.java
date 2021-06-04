package Clothes.DAOUser;

import org.springframework.stereotype.Repository;

import Clothes.DTO.ProductDTOMapper;
import Clothes.DTO.ProductsDTO;
import Clothes.ModelUser.MapperUsers;
import Clothes.ModelUser.UserMapper;
import Clothes.ModelUser.Users;

@Repository
public class UserDAO  extends BaseDAO{
public int AddAccount(Users user) {
	StringBuffer varname= new StringBuffer();
	varname.append("INSERT ");
	varname.append("INTO users");
	varname.append("(");
	varname.append("user,");
	varname.append("password,");
	varname.append("display_name,");
	varname.append("address");
	varname.append(")");
	varname.append("VALUE");
	varname.append("(");
	varname.append("  '"+user.getUser()+"', ");
	varname.append("  '"+user.getPassword()+"', ");
	varname.append("  '"+user.getDisplay_name()+"', ");
	varname.append("  '"+user.getAddress()+"'  ");
	varname.append(")");
	int insert = _jdbcTemplate.update(varname.toString());
	
	return insert;
}
public Users GetUserByAcc(Users user) {
	String sql = "SELECT * FROM users WHERE user ='"+user.getUser()+"'";
	Users  result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
	return result;
};

}
