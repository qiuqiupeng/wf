/**
 * 
 */
package me.leep.wf.util;

import com.alibaba.tamper.BeanCopy;


/**
 * @author 李鹏
 * 
 *
 */
public class BeanUtil {
	private static BeanCopy copy;
	
	public static void copyBean(Object source, Object targer) {
		copy = BeanCopy.create(source.getClass(), targer.getClass()
				);
		copy.copy(source, targer);
		copy = null;
	}

}
