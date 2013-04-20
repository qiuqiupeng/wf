package person.leep.wf.base.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class EnumUtil {

	public static List<String> getEnumStringList(Class<?> clazz){
		List<String> list = new ArrayList<String>();
		if(!clazz.isEnum()){
			return null;
		}
		Field fieldList[] = clazz.getDeclaredFields();
		for(Field field : fieldList){
			if(field.isEnumConstant()){
				list.add(field.getName());
			}
		}
		return list;
	}
	
	public static LinkedHashMap<String,String> getEnumInfo(Class<?> clazz){
		LinkedHashMap<String,String> map = new LinkedHashMap<String,String>();
		if(!clazz.isEnum()){
			return null;
		}
		Field fieldList[] = clazz.getDeclaredFields();
		for(Field field : fieldList){
			if(field.isEnumConstant()){
				String value = field.getName();
				if(field.isAnnotationPresent(EnumFieldExplain.class)){
					EnumFieldExplain efe = (EnumFieldExplain)field.getAnnotation(EnumFieldExplain.class);
					if(efe != null){
						value = efe.fieldDesc();
					}
				}
				map.put(field.getName(),value);
			}
		}
		
		return map;
	}
	
	public static String getEnumDesc(Class<?> clazz,String fieldName){
		String desc = fieldName;
		if(!clazz.isEnum()){
			return null;
		}
		Field fieldList[] = clazz.getDeclaredFields();
		for(Field field : fieldList){
			if(field.isEnumConstant() && StringUtil.compareValue(field.getName(), fieldName)){
				if(field.isAnnotationPresent(EnumFieldExplain.class)){
					EnumFieldExplain efe = (EnumFieldExplain)field.getAnnotation(EnumFieldExplain.class);
					if(efe != null){
						desc = efe.fieldDesc();
					}
				}
			}
		}
		
		return desc;
	}
	
	public static Object getEnum(Class<?> clazz, String fieldName){
		Object enumValue = null;
		if(!clazz.isEnum()){
			return null;
		}
		Field fieldList[] = clazz.getDeclaredFields();
		for(Field field : fieldList){
			if(field.isEnumConstant() && field.getName().toLowerCase().equals(fieldName.toLowerCase())){
				enumValue = field.getClass();
				break;
			}
		}
		
		return enumValue;
	}
}
