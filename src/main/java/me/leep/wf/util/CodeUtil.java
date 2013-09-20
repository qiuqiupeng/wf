package me.leep.wf.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public class CodeUtil {
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// 长连接： http://tech.sina.com.cn/i/2011-03-23/11285321288.shtml

		// 新浪解析后的短链接为： http://t.cn/h1jGSC
		String sLongUrl = "http://tech.sina.com.cn/i/2011-03-23/11285321288.shtml";
		// 3BD768E58042156E54626860E241E999
		String[] aResult = shortCode(sLongUrl);
		// 打印出结果
		for (int i = 0; i < aResult.length; i++) {
			System.out.println("[" + i + "]:::" + aResult[i]);
		}
	}

	/**
	 * 产生短编码，利用时间空间来产生短编码。
	 * 
	 * @param text 输入字符串
	 * @return 输出字符串数组。
	 */
	public static final String[] shortCode(String text) {
		// 可以自定义生成 MD5 加密字符传前的混合 KEY，利用时间产生KEY
		String key = new Date().toString();
		// 要使用生成 URL 的字符
		String[] chars = new String[] { "a", "b", "c", "d", "e", "f", "g", "h",
				"i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
				"u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5",
				"6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H",
				"I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
				"U", "V", "W", "X", "Y", "Z" };
		// 对传入字符串进行 MD5 加密
		String sMD5EncryptResult = getStringMD5(key + text);
		String hex = sMD5EncryptResult;
		String[] resUrl = new String[4];
		for (int i = 0; i < 4; i++) {
			// 把加密字符按照 8 位一组 16 进制与 0x3FFFFFFF 进行位与运算
			String sTempSubString = hex.substring(i * 8, i * 8 + 8);
			long lHexLong = 0x3FFFFFFF & Long.parseLong(sTempSubString, 16);
			String outChars = "";
			for (int j = 0; j < 6; j++) {
				// 把得到的值与 0x0000003D 进行位与运算，取得字符数组 chars 索引
				long index = 0x0000003D & lHexLong;
				// 把取得的字符相加
				outChars += chars[(int) index];
				// 每次循环按位右移 5 位
				lHexLong = lHexLong >> 5;
			}
			// 把字符串存入对应索引的输出数组
			resUrl[i] = outChars;
		}
		return resUrl;
	}

	/**
	 * 产生MD5码
	 * 
	 * @param text 输入字符串
	 * @return 输出字符串
	 */
	public static final String getStringMD5(String text) {

		String md5String = "";
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };

		byte arrByte[] = text.getBytes();
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(arrByte);
			byte arrMD5Byte[] = messageDigest.digest();
			char arrChar[] = new char[arrMD5Byte.length * 2];
			int i = 0;
			for (byte b : arrMD5Byte) {
				arrChar[i++] = hexDigits[b >>> 4 & 0xf];
				arrChar[i++] = hexDigits[b & 0xf];
			}
			md5String = new String(arrChar);

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		return md5String;
	}

}