package person.leep.wf.base.util;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

public class PrintBeanInfo {
	private final static Logger logger = Logger.getLogger(PrintBeanInfo.class);

	//输出Bean的属性值
	@SuppressWarnings("unchecked")
	public static void print(Object obj) {
		Class<?> clas = obj.getClass();
		Field[] fields = clas.getDeclaredFields();
		System.out.println("--------------- 属性如下  -----------------");
		if (logger.isDebugEnabled()) {
			logger.debug("--------------- 属性如下  -----------------");
		}

		for (Field field : fields) {
			field.setAccessible(true);
			try {
				Object subClass = field.get(obj);
				
				if (subClass == null) {
					continue;
				}
				//输出Sub Bean的属性值
			    if (subClass instanceof List) {
			    	List list = (List)subClass;
			    	
			    	System.out.println("Now get List!");
					System.out.println(obj.getClass().getName()+ "." + field.getName());
					if (logger.isDebugEnabled()) {
						logger.debug("Now get List!");
						logger.debug(obj.getClass().getName()+ "." + field.getName());
					}

			    	if (list != null) { 
				    	System.out.println("List.size: " + list.size());
						if (logger.isDebugEnabled()) {
							logger.debug("List.size: " + list.size());
						}

				    	for (int i = 0; i < list.size(); i++) {
				    		print(list.get(i));
				    	}
			    	}
			    } else if (subClass instanceof Set) {
			    	Set set = (Set)subClass;
			    	System.out.println("Now get Set!");
					System.out.println(obj.getClass().getName()+ "." + field.getName());
					if (logger.isDebugEnabled()) {
						logger.debug("Now get Set!");
						logger.debug(obj.getClass().getName()+ "." + field.getName());
					}

			    	if (set != null) {
				    	System.out.println("Set.size: " + set.size());
						if (logger.isDebugEnabled()) {
							logger.debug("Set.size: " + set.size());
						}

						for (int i = 0; i < set.size(); i++) {
				    		print(set.toArray()[i]);
				    	}
			    	}
			    } else {
					System.out.println(
						obj.getClass().getName() 
						+ "." + field.getName()
						+ ": " + field.get(obj));
					if (logger.isDebugEnabled()) {
						logger.debug(obj.getClass().getName() 
									+ "." + field.getName()
									+ ": " + field.get(obj));
					}

			    }
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // 取得属性名
		}
	}
}
