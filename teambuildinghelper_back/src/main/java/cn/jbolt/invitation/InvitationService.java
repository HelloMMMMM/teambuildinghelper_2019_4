package cn.jbolt.invitation;

import com.jfinal.plugin.activerecord.Page;

import cn.jbolt.common.model.Invitation;

public class InvitationService {

	public Page<Invitation> getMyInvitationList(int page, int id) {
		return Invitation.dao.paginate(page, 10, "select *", "from invitation where inviterId=? order by id desc", id);
	}

	public void deleteInvitation(int id) {
		Invitation.dao.deleteById(id);
	}

	public void createInvitation(int inviterId, String inviterName, String invitationTitle, String invitationContent) {
		new Invitation().setInviterId(inviterId).setInviterName(inviterName).setInvitationTitle(invitationTitle)
				.setInvitationContent(invitationContent).save();
	}

	public void updateInvitation(int id, String invitationTitle, String invitationContent) {
		Invitation invitation = Invitation.dao.findById(id);
		if (invitation != null) {
			invitation.setInvitationTitle(invitationTitle).setInvitationContent(invitationContent).update();
		}
	}
}
