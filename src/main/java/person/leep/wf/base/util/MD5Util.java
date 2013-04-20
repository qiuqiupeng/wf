package person.leep.wf.base.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {

	public static final String getStringMD5(String text){
		
		String md5String = "";
		char hexDigits[] = {
	            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
	            'a', 'b', 'c', 'd', 'e', 'f'
	        };

		byte arrByte[] = text.getBytes();
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(arrByte);
			byte arrMD5Byte[] = messageDigest.digest();
			char arrChar[] = new char[arrMD5Byte.length *2 ];
			int i = 0;
			for(byte b : arrMD5Byte){
				arrChar[i++] = hexDigits[b >>> 4 & 0xf];
				arrChar[i++] = hexDigits[b & 0xf];
			}
			md5String = new String(arrChar);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return md5String;
	}
	
	public static final String getFileMD5(String file){
		return null;
	}
}
