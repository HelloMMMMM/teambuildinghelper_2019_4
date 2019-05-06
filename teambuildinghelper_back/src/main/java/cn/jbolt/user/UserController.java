package cn.jbolt.user;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import com.jfinal.upload.UploadFile;

import cn.jbolt.Constant;
import cn.jbolt.apibean.InfoBean;
import cn.jbolt.apibean.ResponseBean;
import cn.jbolt.common.model.User;

public class UserController extends Controller {
	@Inject
	private UserService userService;

	public void addUser() {
		String userName = get("userName");
		String password = get("password");
		String nickName = get("nickName");
		String phone = get("phone");
		ResponseBean responseBean = new ResponseBean();
		boolean isSuccess = userService.addUser(userName, password, nickName, phone);
		responseBean.setCode(isSuccess ? 1 : 0);
		responseBean.setMsg(isSuccess ? "注册成功，请登录" : "该用户名已存在");
		renderJson(responseBean);
	}

	public void login() {
		String userName = get("userName");
		String password = get("password");
		InfoBean infoBean = new InfoBean();
		User user = userService.login(userName, password);
		if (user != null) {
			user.setAvatar(Constant.baseUrl + user.getAvatar());
			infoBean.setCode(1);
			infoBean.setUser(user);
			infoBean.setMsg("登录成功");
		} else {
			infoBean.setCode(0);
			infoBean.setMsg("用户名或密码错误");
		}
		renderJson(infoBean);
	}

	public void updateInfo() {
		int id = getParaToInt("id");
		String password = get("password");
		String nickName = get("nickName");
		String phone = get("phone");
		InfoBean infoBean = new InfoBean();
		User user = userService.updateUserInfo(id, password, nickName, phone);
		if (user != null) {
			user.setAvatar(Constant.baseUrl + user.getAvatar());
			infoBean.setCode(1);
			infoBean.setUser(user);
			infoBean.setMsg("更新成功");
		} else {
			infoBean.setCode(0);
			infoBean.setMsg("更新失败");
		}
		renderJson(infoBean);
	}

	public void changeAvatar() {
		UploadFile uploadFile = getFile();
		int id = getParaToInt("id");
		InfoBean infoBean = new InfoBean();
		User user = userService.changeAvatar(id, uploadFile);
		if (user != null) {
			user.setAvatar(Constant.baseUrl + user.getAvatar());
			infoBean.setCode(1);
			infoBean.setUser(user);
			infoBean.setMsg("更新成功");
		} else {
			infoBean.setCode(0);
			infoBean.setMsg("更新失败");
		}
		renderJson(infoBean);
	}
}
