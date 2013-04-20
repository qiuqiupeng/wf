package person.leep.wf.base.util;
import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;

public class HttpUtil {
	
    public static boolean isPost(HttpServletRequest request){
    	return request.getMethod().equals("POST");
    }
    
    public static boolean isGet(HttpServletRequest request){
    	return request.getMethod().equals("GET");
    }

    public static String getRemoteHost(HttpServletRequest request){
    	return request.getRemoteHost();
    }
    

    public static String getRemotePort(HttpServletRequest request){
    	return request.getRemotePort() + "";
    }
    
    public static void responseFile(HttpServletResponse response, File file,String displayName) throws Exception{
    	response.setContentType("application/octet-stream;charset=UTF-8");
    	String fileName = displayName;
    	if(StringUtil.isEmpty(fileName)){
    		fileName = FileUtil.getFileName(file.getName()) + "." + FileUtil.getFileType(file.getName());
    	}
		String filename = new String(fileName.getBytes(),"ISO8859-1");
		response.setHeader("Content-Disposition", "attachment; filename = " + filename);
		byte[] fileByteArray = StringUtil.getBytesFromFile(file);
		response.setContentLength(fileByteArray.length);
		FileCopyUtils.copy(fileByteArray, response.getOutputStream());
    }
}
