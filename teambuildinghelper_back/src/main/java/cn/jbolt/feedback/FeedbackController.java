package cn.jbolt.feedback;

import com.jfinal.core.Controller;

import cn.jbolt.Constant;
import cn.jbolt.apibean.ResponseBean;
import jodd.mail.Email;
import jodd.mail.SendMailSession;
import jodd.mail.SmtpServer;
import jodd.mail.SmtpSslServer;

public class FeedbackController extends Controller {

	public void feedback() {
		String feedbackContent = get("feedback");
		Email email = Email.create().from(Constant.EMAIL_OWNER_ADDR).to(Constant.EMAIL_OWNER_ADDR).subject("团建助手意见反馈")
				.addHtml("<p>" + feedbackContent + "</p>");

		SmtpServer smtpServer = SmtpSslServer.create(Constant.EMAIL_OWNER_ADDR_HOST)
				.authenticateWith(Constant.EMAIL_OWNER_ADDR, Constant.EMAIL_OWNER_ADDR_PASS);
		SendMailSession session = smtpServer.createSession();
		session.open();
		session.sendMail(email);
		session.close();
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("意见已反馈");
		renderJson(responseBean);
	}

	public void tip() {
		String tipContent = get("tip");
		String toEmail = get("email");
		String title = get("title");
		String userName = get("name");
		Email email = Email.create().from(Constant.EMAIL_OWNER_ADDR).to(toEmail).subject(userName + "预定的" + title)
				.addHtml("<p>" + tipContent + "</p>");

		SmtpServer smtpServer = SmtpSslServer.create(Constant.EMAIL_OWNER_ADDR_HOST)
				.authenticateWith(Constant.EMAIL_OWNER_ADDR, Constant.EMAIL_OWNER_ADDR_PASS);
		SendMailSession session = smtpServer.createSession();
		session.open();
		session.sendMail(email);
		session.close();
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("已留言");
		renderJson(responseBean);
	}
}
