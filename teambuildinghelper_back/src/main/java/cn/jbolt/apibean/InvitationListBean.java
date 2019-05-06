package cn.jbolt.apibean;

import java.util.List;

import cn.jbolt.common.model.Invitation;

public class InvitationListBean extends ResponseBean{
	private List<Invitation> invitations;

	public List<Invitation> getInvitations() {
		return invitations;
	}

	public void setInvitations(List<Invitation> invitations) {
		this.invitations = invitations;
	}
	
}
