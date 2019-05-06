package cn.jbolt.apibean;

import java.util.List;

public class ActivityListBean extends ResponseBean{

	private List<ActivityBean> activityBeans;

	public List<ActivityBean> getActivityBeans() {
		return activityBeans;
	}

	public void setActivityBeans(List<ActivityBean> activityBeans) {
		this.activityBeans = activityBeans;
	}
	
}
