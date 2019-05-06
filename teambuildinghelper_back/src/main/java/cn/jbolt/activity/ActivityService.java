package cn.jbolt.activity;

import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.common.model.Activity;

public class ActivityService {

	public Page<Activity> getActivityPage(int page) {
		return Activity.dao.paginate(page, 10, "select *", "from activity");
	}
}
