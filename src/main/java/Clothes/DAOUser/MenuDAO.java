package Clothes.DAOUser;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Clothes.ModelUser.MapperMenu;
import Clothes.ModelUser.Menus;
@Repository
public class MenuDAO extends BaseDAO{
	public List<Menus> getDataMenus(){
		List<Menus> menu = new ArrayList<Menus>();
		String sql = "Select * from menu";
		menu =_jdbcTemplate.query(sql, new MapperMenu());
		return menu;
	}	
}
