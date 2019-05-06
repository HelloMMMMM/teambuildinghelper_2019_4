package cn.jbolt.order;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.Constant;
import cn.jbolt.apibean.OrderBean;
import cn.jbolt.common.model.Activity;
import cn.jbolt.common.model.Agency;
import cn.jbolt.common.model.Goods;
import cn.jbolt.common.model.Order;

public class OrderService {

	public void createGoodsOrder(int goodsId, int userId) {
		// 1:商品订单
		new Order().setGoodsId(goodsId).setUserId(userId).setOrderType(1).save();
	}

	public void createActivityOrder(int activityId, int agencyId, int userId, String price) {
		// 2:活动订单
		new Order().setActivityId(activityId).setAgencyId(agencyId).setUserId(userId).setAgencyPrice(price)
				.setOrderType(2).save();
	}

	public List<OrderBean> getMyOrder(int page, int id) {
		List<OrderBean> orderBeans = new ArrayList<>();
		Page<Order> pages = Order.dao.paginate(page, 10, "select *", "from `order` where userId=? order by id desc",
				id);
		List<Order> orders = pages.getList();
		for (Order order : orders) {
			OrderBean orderBean = new OrderBean();
			orderBean.setId(order.getId());
			orderBean.setOrderType(order.getOrderType());
			if (order.getOrderType() == 1) {
				Goods goods=Goods.dao.findById(order.getGoodsId());
				goods.setGoodsImg(Constant.baseUrl+goods.getGoodsImg());
				orderBean.setGoods(goods);
			} else if (order.getOrderType() == 2) {
				orderBean.setActivity(Activity.dao.findById(order.getActivityId()));
				orderBean.setAgency(Agency.dao.findById(order.getAgencyId()));
				orderBean.setPrice(order.getAgencyPrice());
			}
			orderBeans.add(orderBean);
		}
		return orderBeans;
	}
}
