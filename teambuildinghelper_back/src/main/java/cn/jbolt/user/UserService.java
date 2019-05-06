package cn.jbolt.user;

import java.util.List;

import com.jfinal.upload.UploadFile;

import cn.jbolt.common.model.User;

public class UserService {

	public boolean isExist(String userName) {
		List<User> users = User.dao.find("select userName from user where userName=?", userName);
		return users != null && users.size() > 0;
	}

	public boolean addUser(String userName, String password, String nickName, String phone) {
		if (!isExist(userName)) {
			new User().setUserName(userName).setPassword(password).setPhone(phone).setNickname(nickName).save();
			return true;
		}
		return false;
	}

	public User updateUserInfo(int id, String password, String nickName, String phone) {
		User user = User.dao.findById(id);
		if (user != null) {
			user.setPassword(password).setNickname(nickName).setPhone(phone).update();
		}
		return user;
	}

	public User login(String userName, String password) {
		List<User> users = User.dao.find("select * from user where userName=? and password=?", userName, password);
		return users != null && users.size() > 0 ? users.get(0) : null;
	}

	public User changeAvatar(int id, UploadFile uploadFile) {
		User user = User.dao.findById(id);
		if (user != null) {
			String absolutePath = uploadFile.getFile().getAbsolutePath();
			user.setAvatar(absolutePath.substring(absolutePath.indexOf("upload")).replace("\\", "/")).update();
		}
		return user;
	}
}
