package com.tiancai.util;

import org.apache.log4j.Logger;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mail {

	private static Logger log = Logger.getLogger(Mail.class);

	private MimeMessage mimeMsg;
	private Session session;
	private Properties props;
	private String username;
	private String password;
	private Multipart mp;
	public Mail(String smtp) {
		setSmtpHost(smtp);
		createMimeMessage();
	}
	public void setSmtpHost(String hostName) {
		log.info("����ϵͳ���ԣ�mail.smtp.host=" + hostName);
		if (props == null) {
			props = System.getProperties();
		}
		props.put("mail.smtp.host", hostName);
	}
	public boolean createMimeMessage() {
		try {
			log.info("׼����ȡ�ʼ��Ự����");
			session = Session.getDefaultInstance(props, null);
		} catch (Exception e) {
			log.info("��ȡ�ʼ��Ự����" + e);
			return false;
		}
		log.info("׼������MIME�ʼ�����");
		try {
			mimeMsg = new MimeMessage(session);
			mp = new MimeMultipart();

			return true;
		} catch (Exception e) {
			log.info("����MIME�ʼ�����ʧ�ܣ�" + e);
			return false;
		}
	}

	/*����SMTP�Ƿ���Ҫ��֤*/
	public void setNeedAuth(boolean need) {
		log.info("����smtp�����֤��mail.smtp.auth = " + need);
		if (props == null)
			props = System.getProperties();
		if (need) {
			props.put("mail.smtp.auth", "true");
		} else {
			props.put("mail.smtp.auth", "false");
		}
	}
	public void setNamePass(String name, String pass) {
		username = name;
		password = pass;
	}

	/*�����ʼ�����*/
	public boolean setSubject(String mailSubject) {
		log.info("�����ʼ����⣡");
		try {
			mimeMsg.setSubject(mailSubject);
			return true;
		} catch (Exception e) {
			System.err.println("�����ʼ����ⷢ������");
			return false;
		}
	}

	/*�����ʼ�����*/
	public boolean setBody(String mailBody) {
		try {
			BodyPart bp = new MimeBodyPart();
			bp.setContent("" + mailBody, "text/html;charset=GBK");
			mp.addBodyPart(bp);
			return true;
		} catch (Exception e) {
			System.err.println("�����ʼ�����ʱ��������" + e);
			return false;
		}
	}

	/*���÷�����*/
	public boolean setFrom(String from) {
		log.info("���÷����ˣ�");
		try {
			mimeMsg.setFrom(new InternetAddress(from)); //������
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/*����������*/
	public boolean setTo(String to) {
		if (to == null)
			return false;
		log.info("���������ˣ�");
		try {
			mimeMsg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/*���峭����*/
	public boolean setCopyTo(String copyto) {
		if (copyto == null)
			return false;
		try {
			mimeMsg.setRecipients(Message.RecipientType.CC, (Address[]) InternetAddress
					.parse(copyto));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/*�����ʼ�ģ��*/
	public boolean sendOut() {
		try {
			mimeMsg.setContent(mp);
			mimeMsg.saveChanges();
			log.info("�ʼ�������....");
			Session mailSession = Session.getInstance(props, null);
			Transport transport = mailSession.getTransport("smtp");
			transport.connect((String) props.get("mail.smtp.host"), username, password);
			transport.sendMessage(mimeMsg, mimeMsg
			.getRecipients(Message.RecipientType.TO));
			log.info("���ͳɹ���");
			transport.close();
			return true;
		} catch (Exception e) {
			System.err.println("�ʼ�ʧ�ܣ�" + e);
			return false;
		}
	}

	/*����sendOut������ɷ���*/
	public static boolean sendAndCc(String smtp, String from, String to, String copyto,
		String subject, String content, String username, String password) {
		Mail theMail = new Mail(smtp);
		theMail.setNeedAuth(true); // ��֤
		if (!theMail.setSubject(subject))
			return false;
		if (!theMail.setBody(content))
			return false;
		if (!theMail.setTo(to))
			return false;
		if (!theMail.setCopyTo(copyto))
			return false;
		if (!theMail.setFrom(from))
			return false;
		theMail.setNamePass(username, password);
		if (!theMail.sendOut())
			return false;
		return true;
	}
	
	/*����sendMail������ɷ���*/
	public static boolean sendMail(String to,	String subject, String content) {
		log.info("to send");
		String smtp = "smtp.163.com";
		String from = "m15527009456@163.com";
		String copyto = "864749494@qq.com";
		String username = "m15527009456@163.com";
		String password = "yk19920320";
		Mail theMail = new Mail(smtp);
		theMail.setNeedAuth(true); // ��֤
		if (!theMail.setSubject(subject))
			return false;
		if (!theMail.setBody(content))
			return false;
		if (!theMail.setTo(to))
			return false;
		if (!theMail.setCopyTo(copyto))
			return false;
		if (!theMail.setFrom(from))
			return false;
		theMail.setNamePass(username, password);
		if (!theMail.sendOut())
			return false;
		return true;
	}	
}
