package cn.jbolt.activity;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.apibean.ActivityBean;
import cn.jbolt.apibean.ActivityListBean;
import cn.jbolt.apibean.AgencyBean;
import cn.jbolt.common.model.Activity;
import cn.jbolt.common.model.Agency;

public class ActivityController extends Controller {
	@Inject
	private ActivityService activityService;
	@Inject
	private AgencyService agencyService;

	public void getActivityList() {
		int page = getParaToInt("page", 1);
		ActivityListBean activityListBean = new ActivityListBean();

		Page<Activity> pages = activityService.getActivityPage(page);
		List<Activity> activities = pages.getList();
		List<ActivityBean> activityBeans = new ArrayList<>();
		for (Activity activity : activities) {
			ActivityBean activityBean = new ActivityBean();
			activityBean.setActivity(activity);
			String priceString = activity.getActivityPrice();
			String[] prices = priceString.split(",");
			String agencyIdString = activity.getAcencyId();
			String[] agencyIds = agencyIdString.split(",");
			List<AgencyBean> agencyBeans = new ArrayList<>();
			for (int i = 0; i < agencyIds.length; i++) {
				AgencyBean agencyBean = new AgencyBean();
				Agency agency = agencyService.getAgencyById(Integer.parseInt(agencyIds[i]));
				agencyBean.setAgency(agency);
				agencyBean.setPrice(prices[i]);
				agencyBeans.add(agencyBean);
			}
			activityBean.setAgencyBeans(agencyBeans);
			activityBeans.add(activityBean);
		}

		activityListBean.setCode(1);
		activityListBean.setActivityBeans(activityBeans);
		renderJson(activityListBean);
	}
}
