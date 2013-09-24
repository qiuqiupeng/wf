package me.leep.wf.actions.system;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import me.leep.wf.actions.base.EditAction;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.BeanUtil;
import me.leep.wf.util.CodeUtil;

import org.apache.commons.lang3.StringUtils;

public class UserEditAction extends EditAction {

	private static final long serialVersionUID = 4096802666866337184L;

	private String rowid;
	private User user;

	/* 以下是图片属性 */
	private static final int BUFFER_SIZE = 16 * 1024;
	private File myFile;
	private String contentType;
	private String fileName;
	private String imageFileName;
	private String caption;
	/* 以上是图片属性 */

	private IUserServices userServices;

	@Override
	public String execute() throws Exception {
		imageFileName = "img/profile.png";
		user = userServices.initUserDto(rowid);
		return SUCCESS;
	}

	@Override
	public String save() throws Exception {
		System.out.println(">>>>>>>>" + User.class.getName()
				+ "save2>>>>>>>>>>>>>");
		if (StringUtils.isNotEmpty(user.getNumber())
				&& StringUtils.isNotEmpty(user.getName())
				&& StringUtils.isNotEmpty(user.getPassword())
				&& StringUtils.isNotEmpty(user.getRepassword())) {
			if (StringUtils.equals(user.getPassword(), user.getRepassword())) {
				UserBean bean = (UserBean) userServices.findById(user.getId(),
						UserBean.class);
				if (bean == null) {
					user.setPassword(CodeUtil.getStringMD5(user.getNumber() + user.getPassword()));
					BaseEntiy entity = new UserBean();
					BeanUtil.copyBean(user, entity);
					userServices.save(entity);
					List<String> messages = new ArrayList<String>();
					messages.add("保存成功");
					setActionMessages(messages);
				} else {
					bean.setName(user.getName());
					bean.setNumber(user.getNumber());
					bean.setEmail(user.getEmail());
					bean.setPassword(CodeUtil.getStringMD5(user.getNumber() + user.getPassword()));
					userServices.update(bean);
					List<String> messages = new ArrayList<String>();
					messages.add("修改成功");
					setActionMessages(messages);
				}

			} else {
				List<String> errors = new ArrayList<String>();
				errors.add("输入的密码不一致！");
				setActionErrors(errors);
			}

		} else {
			List<String> errors = new ArrayList<String>();
			errors.add("数据为空");
			setActionErrors(errors);
		}
		
		return SUCCESS;
	}

	@Override
	public String addNew() throws Exception {
		System.out.println("-------------new--------------");
		user = new User();
		return SUCCESS;
	}

	@Override
	public String delete() throws Exception {
		System.out.println("----------------delete--------------");
		if (StringUtils.isBlank(rowid) && user != null) {
			UserBean entity = (UserBean) userServices.findById(user.getId(),
					UserBean.class);
			userServices.delete(entity, UserBean.class);
			user = new User();
			return SUCCESS;
		} else {
			if (StringUtils.isNotBlank(rowid)) {
				String[] ids = rowid.split(",");
				for (int i = 0; i < ids.length; i++) {
					UserBean entity = (UserBean) userServices.findById(ids[i],
							UserBean.class);
					userServices.delete(entity, UserBean.class);
				}
			}
			return "user-list";
		}

	}

	/**
	 * @return user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user
	 *            要设置的 user
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return userServices
	 */
	public IUserServices getUserServices() {
		return userServices;
	}

	/**
	 * @param userServices
	 *            要设置的 userServices
	 */
	public void setUserServices(IUserServices userServices) {
		this.userServices = userServices;
	}

	/**
	 * @return rowid
	 */
	public String getRowid() {
		return rowid;
	}

	/**
	 * @param rowid
	 *            要设置的 rowid
	 */
	public void setRowid(String rowid) {
		this.rowid = rowid;
	}

	/**
	 * @return myFile
	 */
	public File getMyFile() {
		return myFile;
	}

	/**
	 * @param myFile
	 *            要设置的 myFile
	 */
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	/**
	 * @return contentType
	 */
	public String getContentType() {
		return contentType;
	}

	/**
	 * @param contentType
	 *            要设置的 contentType
	 */
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	/**
	 * @return fileName
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * @param fileName
	 *            要设置的 fileName
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	/**
	 * @return imageFileName
	 */
	public String getImageFileName() {
		return imageFileName;
	}

	/**
	 * @param imageFileName
	 *            要设置的 imageFileName
	 */
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	/**
	 * @return caption
	 */
	public String getCaption() {
		return caption;
	}

	/**
	 * @param caption
	 *            要设置的 caption
	 */
	public void setCaption(String caption) {
		this.caption = caption;
	}

	/**
	 * @return bufferSize
	 */
	public static int getBufferSize() {
		return BUFFER_SIZE;
	}

}
