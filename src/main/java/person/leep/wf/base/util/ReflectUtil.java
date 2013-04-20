package person.leep.wf.base.util;

import java.lang.reflect.Method;

public class ReflectUtil {

	public static Object invokeMethod(String method,Object args[]) 
		throws Exception{
		
		int i = method.lastIndexOf(".");
		String className = method.substring(0,i);
		String methodName = method.substring(i+1);
		Object obj = Class.forName(className).newInstance();
		Class<?> parameterType[] = null;

		if(args != null && args.length > 0){
			parameterType = new Class<?>[args.length];
			for(int j=0; j<args.length; j++){
				parameterType[j] = args[j].getClass();
			}
		}
		Method methodObject = obj.getClass().getMethod(methodName, parameterType);
		Object result = methodObject.invoke(obj, args);
		return result;
	}
	
	public static Object invokeMethod(Object obj, String method,Object args[]) 
	throws Exception{
	
	Class<?> parameterType[] = null;

	if(args != null && args.length > 0){
		parameterType = new Class<?>[args.length];
		for(int j=0; j<args.length; j++){
			parameterType[j] = args[j].getClass();
		}
	}
	Method methodObject = obj.getClass().getMethod(method, parameterType);
	Object result = methodObject.invoke(obj, args);
	return result;
}
}
