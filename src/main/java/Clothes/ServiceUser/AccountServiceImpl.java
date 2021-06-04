package Clothes.ServiceUser;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import Clothes.DAOUser.UserDAO;
import Clothes.ModelUser.Users;
@Service
public class AccountServiceImpl implements IAccountServiceI{
@Autowired
UserDAO usersDAO = new UserDAO();
public int AddAccount(Users user) {
	user.setPassword(BCrypt.hashpw(user.getPassword(),BCrypt.gensalt(12)));
	return usersDAO.AddAccount(user);
}

public boolean CheckAccount(Users user) {
	String pass = user.getPassword();
	user = usersDAO.GetUserByAcc(user);
	if(user != null) {
		if(BCrypt.checkpw(pass, user.getPassword())) {
			return true;
			
		}else {
			return false;
		}
	
	}
	return false;
}

}
