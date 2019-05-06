package cn.jbolt.invitation;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.apibean.InvitationListBean;
import cn.jbolt.apibean.ResponseBean;
import cn.jbolt.common.model.Invitation;

public class InvitationController extends Controller {
	@Inject
	private InvitationService invitationService;

	public void getInvitationList() {
		int id = getParaToInt("id");
		int page = getParaToInt("page", 1);
		Page<Invitation> pages = invitationService.getMyInvitationList(page, id);
		InvitationListBean invitationListBean = new InvitationListBean();
		invitationListBean.setCode(1);
		invitationListBean.setInvitations(pages.getList());
		renderJson(invitationListBean);
	}

	public void deleteInvitation() {
		int id = getParaToInt("id");
		invitationService.deleteInvitation(id);
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("删除成功");
		renderJson(responseBean);
	}

	public void createInvitation() {
		int inviterId = getParaToInt("inviterId");
		String inviterName = get("inviterName");
		String invitationTitle = get("invitationTitle");
		String invitationContent = get("invitationContent");
		invitationService.createInvitation(inviterId, inviterName, invitationTitle, invitationContent);
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("邀请函创建成功");
		renderJson(responseBean);
	}
	
	public void updateInvitation(){
		int id=getParaToInt("id");
		String invitationTitle = get("invitationTitle");
		String invitationContent = get("invitationContent");
		invitationService.updateInvitation(id, invitationTitle, invitationContent);
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("邀请函更新成功");
		renderJson(responseBean);
	}
}
