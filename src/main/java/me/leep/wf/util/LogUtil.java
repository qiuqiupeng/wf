package me.leep.wf.util;

import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * @author 李鹏
 */
public class LogUtil {
	private static final Logger logger;
	
	static {
		logger = Logger.getLogger("wf");
		logger.setLevel(Level.ALL);
	}
	
	public static void log(String info, Level level, Throwable ex) {
    	logger.log(level, info, ex);
    }
    
}
