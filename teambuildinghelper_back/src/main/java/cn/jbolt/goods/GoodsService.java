package cn.jbolt.goods;

import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.common.model.Goods;

public class GoodsService {

	public Page<Goods> getGoodsPage(int page) {
		return Goods.dao.paginate(page, 10, "select *", "from goods");
	}

}
