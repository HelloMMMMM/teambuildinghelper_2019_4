package cn.jbolt.common.config;

import com.jfinal.config.Routes;

import cn.jbolt.activity.ActivityController;
import cn.jbolt.feedback.FeedbackController;
import cn.jbolt.goods.GoodsController;
import cn.jbolt.invitation.InvitationController;
import cn.jbolt.order.OrderController;
import cn.jbolt.overall.OverallController;
import cn.jbolt.user.UserController;

public class ApiRoutes extends Routes {

	@Override
	public void config() {
		//针对一组路由配置baseViewPath
		//this.setBaseViewPath("/_view/_admin");
		//针对一组路由配置单独的拦截器
		//this.addInterceptor(new AdminAuthInterceptor());
		//针对后台管理系统配置路由+controller
		//this.add("/admin", AdminIndexController.class,"/index");
		this.add("/api/user", UserController.class);
		this.add("/api/goods",GoodsController.class);
		this.add("/api/activity",ActivityController.class);
		this.add("/api/invitation",InvitationController.class);
		this.add("/api/order",OrderController.class);
		this.add("/api/feedback",FeedbackController.class);
		this.add("/api/overall",OverallController.class);
	}

}