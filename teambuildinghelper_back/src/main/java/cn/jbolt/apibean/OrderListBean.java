package cn.jbolt.apibean;

import java.util.List;

public class OrderListBean extends ResponseBean{
	
	private List<OrderBean> orderBeans;

	public List<OrderBean> getOrderBeans() {
		return orderBeans;
	}

	public void setOrderBeans(List<OrderBean> orderBeans) {
		this.orderBeans = orderBeans;
	}

}
