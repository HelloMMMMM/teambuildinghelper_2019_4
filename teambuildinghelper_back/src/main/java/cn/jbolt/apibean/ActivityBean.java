package cn.jbolt.apibean;

import java.util.List;

import cn.jbolt.common.model.Activity;

public class ActivityBean {
	private Activity activity;
	private List<AgencyBean> agencyBeans;
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	public List<AgencyBean> getAgencyBeans() {
		return agencyBeans;
	}
	public void setAgencyBeans(List<AgencyBean> agencyBeans) {
		this.agencyBeans = agencyBeans;
	}
	
}
