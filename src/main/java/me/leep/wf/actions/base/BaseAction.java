/**
 * BaseAction
 */
package me.leep.wf.actions.base;

import java.util.logging.Level;
import java.util.logging.Logger;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lipeng
 *
 */
public class BaseAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final Logger logger;
	
	static {
		logger = Logger.getLogger("");
		logger.setLevel(Level.ALL);
	}
	
	public static void log(String info, Level level, Throwable ex) {
    	logger.log(level, info, ex);
    }

}
