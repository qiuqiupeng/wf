package person.leep.wf.base.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class ListUtils {
	
	
	//从对象列表中,把所有对象的指定属性以数组方式返回;
	@SuppressWarnings("unchecked")
	public static Object[] makeObjectListToPropertyArray(List list , String propertyName){
		
		List result = new ArrayList();
		
		for(Object o : list){
			if(o==null){ continue;}
			Class objClass = o.getClass();
			try {
				Field field = objClass.getDeclaredField(propertyName);
				if(field!=null){
					field.setAccessible(true);
					Object value = field.get(o);
					if(value!=null){
						result.add(value);
					}
				}
				
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (NoSuchFieldException e) {
				e.printStackTrace();
			}catch (Exception e){
				e.printStackTrace();
			}
		}
		return result.toArray();
		
	}

//	public static void main(String[] args){
//		
//		List<Company> companys = new ArrayList();		
//		for(int i = 0 ; i<=1000 ; i++){
//			Company company = new Company();
//			company.setCompanyId(i+"");
//			companys.add(company);
//		}
//	    Object[] r =  ListUtils.makeObjectListToPropertyArray(companys, "companyId");
//	    String[] r2 = (String[]) r;
//	}
}
