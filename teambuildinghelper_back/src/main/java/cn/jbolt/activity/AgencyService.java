package cn.jbolt.activity;

import cn.jbolt.common.model.Agency;

public class AgencyService {

	public Agency getAgencyById(int id) {
		return Agency.dao.findById(id);
	}
}
