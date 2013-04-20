package person.leep.wf.base.constant;

import java.awt.Color;
import java.awt.Font;
import java.util.Locale;

public final class BaseConstants {	
	
	public final static Locale DEFAULT_LOCALE = Locale.CHINA;
	
	/**
	 * 编码常量
	 */
	public static final String UTF8_ENCODING = "UTF-8";
	
	public static final String ISO88591_ENCODING = "ISO-8859-1";
	
	public static final String GBK_ENCODING = "GBK";
	
	public static final String BIG5_ENCODING = "BIG5";
	
	public static final String CONTENTYPE = "application/octet-stream";
	
	public static final String  DISPOSITION = "Content-Disposition";
	
	public static final String  ATTACHMENT = "attachment;filename=";
	
	/**
	 * 常用操作
	 */
	public static final String OPER_EDIT = "edit";
	
	public static final String OPER_ADD = "add";
	
	public static final String OPER_DEL = "del";
	
	public static final String OPER_SAVE = "save";
	
	public static final String OPER_PASS = "pass";
	
	public static final String OPER_UNPASS = "unpass";
	
	public static final String OPER_FINISH = "finish";
	
	public static final String OPER_EDITSAVE = "editSave";
	
	
	/**
	 * 随机验证码常量
	 */
	public static final int WIDTH_VALIDATECODEPIC = 60;//验证码图片的宽度
	
	public static final int HEIGHT_VALIDATECODEPIC = 20;//验证码图片的高度
	
	public static final int COUNT_VALIDATECODE = 4;//验证码字符个数
	
	public static final Color BG_COLOR = new Color(255,255,255);//验证码图片背景颜色
	
	public static final Color BORDER_COLOR =  new Color(0,0,0);//验证码图片边框颜色
	
	public static final int FROM_DISTURBEDLINE = 255;//干扰线颜色起始值
	
	public static final int TO_DISTURBEDLINE = 255;//干扰线颜色最终值
	
	public static final int NUM_DISTURBEDLINE = 155;//干扰线条数
	
	public static final String FONT_NAME = "Times NEW Roman";//验证码字体名称
	
	public static final int FONT_STYLE = Font.ITALIC;//验证码字体样式
	
	//public static final int FONT_SIZE = 20;//验证码字体大小
	
	/**
	 * 邮件类型
	 */
	public static final int GOOGLE_MAIL = 1;
	
	public static final int SINA_MAIL  = 2;
	
	public static final int SOHOU_MAIL = 3;
	
	public static final int TOM_MAIL = 4;
	
	public static final int HOT_MAIL = 5;
	
	/**
	 * 缓冲区大小
	 */
	public static final int BUFFER_SIZE = 1024 * 8;
	
	/**
	 * 页面记录大小
	 */
	public static final int DEFAULT_PAGE_SIZE = 15;
	
	/**
	 * 上传文件暂存路径
	 */
	public static final String UPLOAD_FILE_PATH = "/uploadFile";
	
	public static final String FILE_DOT_SEPRATOR = ".";
	
	/**
	 * Logger模块名称
	 */	
	public static final String BUSINESS_MODULE = "business";
	
	public static final String BASE_MODULE = "base";	
	
	public static final String PRODUCT_MODULE = "product";

	public static final String ORDER_MODULE = "order";
	
	public static final String MEMBER_MODULE = "member";
	
	public static final String DATA_MODULE = "data";

	public static final String STATISTIC_MODULE = "statistic";

	public static final String SYSTEM_MODULE = "system";

	public static final String WORKFLOW_MODULE = "workflow";
	
	/**
	 * 用户信息
	 */
	public static final String SESSION_USERINFO_KEY = "userInfo";
	
	/**
	 * 删除标志
	 */
	public static final int IS_REMOVED = 1;//已删除 //是领导 //巳读
	
	public static final int UN_REMOVED = 0;//未删除 //不是领导 //未读
	/**
	 * 阅读标志
	 */
	public static final int IS_READ = 1; //巳读
	
	public static final int UN_READ = 0; //未读
	
}