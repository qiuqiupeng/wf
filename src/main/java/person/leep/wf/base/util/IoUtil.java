package person.leep.wf.base.util;

import java.io.IOException;
import java.io.InputStream;

public class IoUtil {
	public static String InputStreamToStr(InputStream is,String encoding){
		try {
			byte[] b = new byte[1024];
			StringBuilder reStr = new StringBuilder("");
			if(is==null)
				return "";
			int bytesRead = 0;
	        while (true) {
	        	bytesRead = is.read(b, 0, 1024); // return final read bytes counts
	        	if (bytesRead == -1) {// end of InputStream
	        		break;
	        	}
	        	reStr.append(new String(b, 0, bytesRead, encoding)); // convert to string using bytes
	        }
	        return reStr.toString();
		}catch(IOException e){
			e.printStackTrace();
			return "";
		}
	}
}