package cn.jbolt.goods;

import java.util.List;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.Constant;
import cn.jbolt.apibean.GoodsListBean;
import cn.jbolt.common.model.Goods;

public class GoodsController extends Controller {
	@Inject
	private GoodsService goodsService;

	public void getGoodsList() {
		int page = getParaToInt("page", 1);
		Page<Goods> pages = goodsService.getGoodsPage(page);
		GoodsListBean goodsListBean = new GoodsListBean();
		List<Goods> gList = pages.getList();
		for (Goods goods : gList) {
			goods.setGoodsImg(Constant.baseUrl + goods.getGoodsImg());
		}
		goodsListBean.setCode(1);
		goodsListBean.setGoodsList(gList);
		renderJson(goodsListBean);
	}
}
