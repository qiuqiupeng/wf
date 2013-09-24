/**
 * 
 */
package me.leep.wf.util;

import net.sf.cglib.beans.BeanCopier;

/**
 * @author 李鹏
 * 
 *
 */
public class BeanUtil {
	private static BeanCopier copy;
	
	public static void copyBean(Object source, Object targer) {
		copy = BeanCopier.create(source.getClass(), targer.getClass(),
				false);
		copy.copy(source, targer, null);
		copy = null;
	}

}
