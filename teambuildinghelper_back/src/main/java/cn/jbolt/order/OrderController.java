package cn.jbolt.order;

import java.util.List;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;

import cn.jbolt.apibean.OrderBean;
import cn.jbolt.apibean.OrderListBean;
import cn.jbolt.apibean.ResponseBean;

public class OrderController extends Controller {
	@Inject
	private OrderService orderService;

	public void createOrder() {
		int orderType = getParaToInt("orderType");
		int userId = getParaToInt("userId");
		if (orderType == 1) {
			int goodsId = getParaToInt("goodsId");
			orderService.createGoodsOrder(goodsId, userId);
		} else if (orderType == 2) {
			int activityId = getParaToInt("activityId");
			int agencyId = getParaToInt("agencyId");
			String price = get("price");
			orderService.createActivityOrder(activityId, agencyId, userId, price);
		}
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("下单成功");
		renderJson(responseBean);
	}

	public void getMyOrder() {
		int id = getParaToInt("id");
		int page = getParaToInt("page", 1);
		OrderListBean orderListBean = new OrderListBean();
		List<OrderBean> orderBeans = orderService.getMyOrder(page, id);
		orderListBean.setCode(1);
		orderListBean.setOrderBeans(orderBeans);
		renderJson(orderListBean);
	}
}
