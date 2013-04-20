package person.leep.wf.base.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtilsBean;

import com.sun.org.apache.commons.beanutils.DynaBean;
import com.sun.org.apache.commons.beanutils.DynaProperty;

public class MergeBeanInfo {

	/**
	 * Bean中数值型属性值累加
	 * 
	 * @param dest
	 * @param orig
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	@SuppressWarnings("unchecked")
	public static void mergeProperties(Object dest, Object orig)
			throws IllegalAccessException, InvocationTargetException {

		BeanUtilsBean beanUtils = BeanUtilsBean.getInstance();

		// Validate existence of the specified beans
		if (dest == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (orig == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		// Copy the properties, converting as necessary
		if (orig instanceof DynaBean) {
			DynaProperty[] origDescriptors = 
				((DynaBean)orig).getDynaClass().getDynaProperties();
			
			for (DynaProperty dp : origDescriptors) {
				String name = dp.getName();
				String type = dp.getType().getSimpleName();
				Object mergeValue = null;
				Object origValue = ((DynaBean) orig).get(name);
				Object destValue = ((DynaBean) dest).get(name);
				
				// Need to check isReadable() for WrapDynaBean
				// (see Jira issue# BEANUTILS-61)
				if (   beanUtils.getPropertyUtils().isReadable(orig, name)
					&& beanUtils.getPropertyUtils().isWriteable(dest, name)) {
					//Merge的属性名
					if (   !name.toLowerCase().contains("amount")
						&& !name.toLowerCase().contains("count")
						&& !name.toLowerCase().contains("fee")
						&& !name.toLowerCase().contains("quantity")) {
						continue;
					}
					
					//Merge的属性类型
					if (   !"Integer".equals(type)
						&& !"int".equals(type)
						&& !"Long".equals(type)
						&& !"long".equals(type)
						&& !"Float".equals(type)
						&& !"float".equals(type)
						&& !"Double".equals(type)
						&& !"double".equals(type)) {
						continue;
					}
					
					if (   "Integer".equals(type)
						|| "int".equals(type)) {
						int value = 0;
						value += (origValue == null)?Integer.parseInt("0"):Integer.parseInt(origValue.toString());
						value += (destValue == null)?Integer.parseInt("0"):Integer.parseInt(destValue.toString());
						mergeValue = value;
					}
					
					if (   "Long".equals(type)
						|| "long".equals(type)) {
						long value = 0;
						value += (origValue == null)?Long.parseLong("0"):Long.parseLong(origValue.toString());
						value += (destValue == null)?Long.parseLong("0"):Long.parseLong(destValue.toString());
						mergeValue = value;		
					}
					
					if (   "Float".equals(type)
						|| "float".equals(type)) {
						float value = 0;
						value += (origValue == null)?Float.parseFloat("0"):Float.parseFloat(origValue.toString());
						value += (destValue == null)?Float.parseFloat("0"):Float.parseFloat(destValue.toString());
						mergeValue = value;
					}
					
					if (   "Double".equals(type)
						|| "double".equals(type)) {
						double value = 0;
						value += (origValue == null)?Double.parseDouble("0"):Double.parseDouble(origValue.toString());
						value += (destValue == null)?Double.parseDouble("0"):Double.parseDouble(destValue.toString());
						mergeValue = value;

					}
					
					beanUtils.copyProperty(dest, name, mergeValue);
					System.out.println(type + ": " + name + " = " + ((DynaBean) dest).get(name));
				}
			}
			
		} else if (orig instanceof Map) {
			Iterator entries = ((Map) orig).entrySet().iterator();
			while (entries.hasNext()) {
				Map.Entry entry = (Map.Entry) entries.next();
				String name = (String) entry.getKey();
				String type = entry.getClass().getSimpleName();
				Object mergeValue = null;
				Object origValue = entry.getValue();
				Object destValue = ((Map) dest).get(name);
				
				//TODO Why Map writeable = false;
				if (beanUtils.getPropertyUtils().isWriteable(dest, name)) {
					//Merge的属性名
					if (   !name.toLowerCase().contains("amount")
						&& !name.toLowerCase().contains("count")
						&& !name.toLowerCase().contains("fee")
						&& !name.toLowerCase().contains("quantity")) {
						continue;
					}
					
					//Merge的属性类型
					if (   !"Integer".equals(type)
						&& !"int".equals(type)
						&& !"Long".equals(type)
						&& !"long".equals(type)
						&& !"Float".equals(type)
						&& !"float".equals(type)
						&& !"Double".equals(type)
						&& !"double".equals(type)) {
						continue;
					}
					
					if (beanUtils.getPropertyUtils().isReadable(orig, name)
						&& beanUtils.getPropertyUtils().isWriteable(dest, name)) {	
						if (   "Integer".equals(type)
							|| "int".equals(type)) {
							int value = 0;
							value += (origValue == null)?Integer.parseInt("0"):Integer.parseInt(origValue.toString());
							value += (destValue == null)?Integer.parseInt("0"):Integer.parseInt(destValue.toString());
							mergeValue = value;
						}
						
						if (   "Long".equals(type)
							|| "long".equals(type)) {
							long value = 0;
							value += (origValue == null)?Long.parseLong("0"):Long.parseLong(origValue.toString());
							value += (destValue == null)?Long.parseLong("0"):Long.parseLong(destValue.toString());
							mergeValue = value;		
						}
						
						if (   "Float".equals(type)
							|| "float".equals(type)) {
							float value = 0;
							value += (origValue == null)?Float.parseFloat("0"):Float.parseFloat(origValue.toString());
							value += (destValue == null)?Float.parseFloat("0"):Float.parseFloat(destValue.toString());
							mergeValue = value;
						}
						
						if (   "Double".equals(type)
							|| "double".equals(type)) {
							double value = 0;
							value += (origValue == null)?Double.parseDouble("0"):Double.parseDouble(origValue.toString());
							value += (destValue == null)?Double.parseDouble("0"):Double.parseDouble(destValue.toString());
							mergeValue = value;

						}
						
						beanUtils.copyProperty(dest, name, mergeValue);
						System.out.println(type + ": " + name + " = " + ((Map) dest).get(name));
					}
				}
			}
			
		} else {/* if (orig is a standard JavaBean) */
			PropertyDescriptor[] origDescriptors = 
				beanUtils.getPropertyUtils().getPropertyDescriptors(orig);
			
			try {
				
				for (PropertyDescriptor pd : origDescriptors) {
					String name = pd.getName();
					String type = pd.getPropertyType().getSimpleName();
					Object mergeValue = null;
					Object origValue = beanUtils.getPropertyUtils().getSimpleProperty(orig, name);
					Object destValue = beanUtils.getPropertyUtils().getSimpleProperty(dest, name);
					
					//第一个元素是本class
					if ("class".equals(name)) {
						continue; // No point in trying to set an object's class
					}
					
					//Merge的属性名
					if (   !name.toLowerCase().contains("amount")
						&& !name.toLowerCase().contains("count")
						&& !name.toLowerCase().contains("fee")
						&& !name.toLowerCase().contains("quantity")) {
						continue;
					}
					
					//Merge的属性类型
					if (   !"Integer".equals(type)
						&& !"int".equals(type)
						&& !"Long".equals(type)
						&& !"long".equals(type)
						&& !"Float".equals(type)
						&& !"float".equals(type)
						&& !"Double".equals(type)
						&& !"double".equals(type)) {
						continue;
					}
					
					if (beanUtils.getPropertyUtils().isReadable(orig, name)
						&& beanUtils.getPropertyUtils().isWriteable(dest, name)) {	
						if (   "Integer".equals(type)
							|| "int".equals(type)) {
							int value = 0;
							value += (origValue == null)?Integer.parseInt("0"):Integer.parseInt(origValue.toString());
							value += (destValue == null)?Integer.parseInt("0"):Integer.parseInt(destValue.toString());
							mergeValue = value;
						}
						
						if (   "Long".equals(type)
							|| "long".equals(type)) {
							long value = 0;
							value += (origValue == null)?Long.parseLong("0"):Long.parseLong(origValue.toString());
							value += (destValue == null)?Long.parseLong("0"):Long.parseLong(destValue.toString());
							mergeValue = value;		
						}
						
						if (   "Float".equals(type)
							|| "float".equals(type)) {
							float value = 0;
							value += (origValue == null)?Float.parseFloat("0"):Float.parseFloat(origValue.toString());
							value += (destValue == null)?Float.parseFloat("0"):Float.parseFloat(destValue.toString());
							mergeValue = value;
						}
						
						if (   "Double".equals(type)
							|| "double".equals(type)) {
							double value = 0;
							value += (origValue == null)?Double.parseDouble("0"):Double.parseDouble(origValue.toString());
							value += (destValue == null)?Double.parseDouble("0"):Double.parseDouble(destValue.toString());
							mergeValue = value;
	
						}
						
						beanUtils.copyProperty(dest, name, mergeValue);
						System.out.println(type + ": " + name + " = " + beanUtils.getPropertyUtils().getSimpleProperty(dest, name));
					}
				}
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
