package person.leep.wf.base.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.util.HtmlUtils;

public class StringUtil {
	
	public static void main(final String[] args) {
		
	}
	
	public static String increaseAlphabet(String code,int defaultLength) throws Exception{
		
		String alphabetList = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String alphabet = "";
		String character = "";
		
		if(isEmpty(code)){
			character = substring(alphabetList,0,1);
			for(int i=0; i<defaultLength; i++){
				alphabet += character;
			}
			return alphabet;
		}
		
		code = code.trim().toUpperCase();
		String lastAlphabetCharacter = alphabetList.substring(alphabetList.length()-1);
		String lastCodeCharacter = code.substring(code.length()-1);
		if(lastCodeCharacter.equals(lastAlphabetCharacter)){
			int i = 0;
			for(i=code.length()-1; i>-1; i--){
				character = substring(code,i,1);
				if(! character.equals(lastAlphabetCharacter)){
					break;
				}
			}
			if(i == -1){
				throw new Exception("达到最大值.");
			}
		}
		
		String nextCharacter;
		String firstAlphabetCharacter = alphabetList.substring(0,1);
		if(lastCodeCharacter.equals(lastAlphabetCharacter)){
			List<String> characterList = new ArrayList<String>();
			characterList.add(firstAlphabetCharacter);
			int j = code.length()-2;
			String previousCodeCharacter = substring(code,j, 1);
			
			while(previousCodeCharacter.equals(lastAlphabetCharacter)){
				characterList.add(firstAlphabetCharacter);
				previousCodeCharacter = substring(code,--j, 1);
			}
			
			int i = alphabetList.indexOf(previousCodeCharacter);
			nextCharacter = substring(alphabetList,i+1,1);
			
			String tempCode = "";
			for(i= characterList.size()-1; i>-1; i--){
				tempCode += characterList.get(i);
			}
			
			alphabet = substring(code,0, code.length() - tempCode.length() -1) + nextCharacter + tempCode;
			
		}else{
			int i = alphabetList.indexOf(lastCodeCharacter);
			nextCharacter = substring(alphabetList,i+1,1);
			alphabet = substring(code,0,code.length() - 1) + nextCharacter;
		}
				
		return alphabet;
	}
	
	public static String substring(String text,int beginIndex,int length){
		
		String retValue = "";
		
		if(isEmpty(text)){
			return "";
		}
		
		if(length <= 0){
			return "";
		}
		
		if(beginIndex < 0){
			beginIndex = 0;
		}
				
		if(beginIndex + length > text.length()){
			retValue = text.substring(beginIndex);
		}else{
			retValue = text.substring(beginIndex, beginIndex + length);
		}
		
		return retValue;
	}
	
	
	public static String[] splitStringByLength(String text,int length){
		
		int count;
		if(text.length() % length == 0){
			count = (int)Math.ceil(text.length() / length);
		}else{
			count = (int)Math.ceil(text.length() / length) + 1;
		}
			
		String[] stringArray = new String[count];
		for(int i=0; i<count; i++){
	
			if(i == count - 1){
				stringArray[i] = text.substring(i*length);
			}else{
				stringArray[i] = text.substring(i*length,length);
			}
		}
		
		
		return stringArray;
	}
	
	/**
     * 文件转化为字节数组
     * @Author 
     * @EditTime 
     */
    public static byte[] getBytesFromFile(File f) {
        if (f == null) {
            return null;
        }
        try {
            FileInputStream stream = new FileInputStream(f);
            ByteArrayOutputStream out = new ByteArrayOutputStream(1000);
            byte[] b = new byte[1000];
            int n;
            while ((n = stream.read(b)) != -1)
                out.write(b, 0, n);
            stream.close();
            out.close();
            return out.toByteArray();
        } catch (IOException e) {
        }
        return null;
    }

    /**
     * 把utf-8字符串解成gb2312
     */
    public static final String ISO8859ToGb2312(String source)
    {
        String temp = null;
        if (source == null || source.equals(""))
        {
            return source;
        }
        try
        {
            temp = new String(source.getBytes(),"iso8859-1");
        }
        catch (Exception e)
        {
            
        }
        return temp;
    }
	public static String convertToHtml(String text){
		if(text == null){
			return "";
		}
		String html = HtmlUtils.htmlEscape(text);
		html = html.replace(" ", "&nbsp;");
		html = html.replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;");
		html = html.replaceAll("\r\n", "<br>");
		
		return html;
	}
	
	public static String getStringFromByteArray(byte[] content ){
		
		String val = "";
		if(content != null && content.length > 0){
			try{
				val = new String(content,0,content.length,"utf-8");
			}
			catch(Exception e){
				
			}
		}
		return val;
	}
	
	public static String getStringFromByteArray(byte[] content,String encoding){
		
		String val = "";
		if(content != null && content.length > 0){
			try{
				val = new String(content,0,content.length,encoding);
			}
			catch(Exception e){
				
			}
		}
		return val;
	}
	
	public static String getUuid(){
		String uuid = UUID.randomUUID().toString();
		return uuid;
	}
	
	public static boolean compareValue(String source,String target){
		if(source == null){
			source = "";
		}
		if(target == null){
			target = "";
		}
		
		source = source.trim().toLowerCase();
		target = target.trim().toLowerCase();
		boolean result = source.equals(target);
		return result;
	}
	
	public static boolean isEmpty(String str){
		if(str == null){
			str = "";
		}
		boolean result = str.trim().length() == 0;
		return result;
	}
	
	public static boolean isNotEmpty(String str){
		boolean result = isEmpty(str);
		return !result;
	}
	
	public static boolean isDate(String str){
		try{
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			format.parse(str);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	
	public static boolean isInteger(String str){
		try{
			Integer.parseInt(str);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	
	public static boolean isNumber(String str){
		try{
			Double.parseDouble(str);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	
	public static String trimEnd(String str,String stripString){
		String result = StringUtils.stripEnd(str, stripString);
		return result;
	}
	
	
    public static String[] split(String list, String seperators, boolean include)
    {
        StringTokenizer tokens = new StringTokenizer(list, seperators, include);
        String[] result = new String[tokens.countTokens()];
        int i = 0;
        while (tokens.hasMoreTokens())
        {
            result[i++] = tokens.nextToken();
        }
        return result;
    }
    
    public static String unqualify(String qualifiedName)
    {
        return unqualify(qualifiedName, ".");
    }
    
    public static String unqualify(String qualifiedName, String seperator)
    {
        return qualifiedName.substring(qualifiedName.lastIndexOf(seperator) + 1);
    }
    

    /**
     * <p>メソッド名：int2String</p>
     * <p>概要： 指定された数字がzeroの場合、空文字列を返す。そうでなければ、数字を返す。</p>
     * <p>作成者: </p>
     * <p>作成日: </p>
     * <p>更新者: </p>
     * <p>更新日: </p>
     * @param int 数字
     * @return String チェック後の文字列
     * @author 
     */ 
    public static String int2String(int i) {
        if (i == 0) {
            return "";
        } else {
           return String.valueOf(i);
        }
     }
    
   /**
    * <p>メソッド名：string2Int</p>
    * <p>概要： 指定された文字列が空文字列の場合、zeroを返す。そうでなければ、数字を返す。</p>
    * <p>作成者: 呉　春明</p>
    * <p>作成日: </p>
    * <p>更新者: </p>
    * <p>更新日: </p>
    * @param String 半角文字チェックを行う文字列
    * @return int チェック後の数字
    * @author 
    */ 
   public static int string2Int(String s) {
       if (s.equals("")) {
           return 0;
       }
       
       Pattern pattern = Pattern.compile("[-+]?[0-9]*");
       Matcher isNum = pattern.matcher(s);
       if( !isNum.matches() ){
           return 0;
       } else {
           return Integer.parseInt(s.trim());
       } 
    }

   /**
    * <p>メソッド名：long2String</p>
    * <p>概要： 指定された数字がzeroの場合、空文字列を返す。そうでなければ、数字を返す。</p>
    * <p>作成者: 呉　春明</p>
    * <p>作成日: </p>
    * <p>更新者: </p>
    * <p>更新日: </p>
    * @param int 数字
    * @return String チェック後の文字列
    * @author 
    */ 
   public static String long2String(long l) {
       if (l == 0) {
           return "";
       } else {
          return String.valueOf(l);
       }
    }
   
   /**
   * <p>メソッド名：string2Long</p>
   * <p>概要： 指定された文字列が空文字列の場合、zeroを返す。そうでなければ、数字を返す。</p>
   * <p>作成者: 呉　春明</p>
   * <p>作成日: </p>
   * <p>更新者: </p>
   * <p>更新日: </p>
   * @param String 半角文字チェックを行う文字列
   * @return long チェック後の数字
   * @author 
   */ 
   public static long string2Long(String s) {
       if (s.equals("")) {
           return 0;
       }
       
       Pattern pattern = Pattern.compile("[-+]?[0-9]*");
       Matcher isNum = pattern.matcher(s);
       if( !isNum.matches() ){
           return 0;
       } else {
           return Long.parseLong(s.trim());
       } 
   }

   /**
    * <p>メソッド名：double2String</p>
    * <p>概要： 指定された数字がzeroの場合、空文字列を返す。そうでなければ、数字を返す。</p>
    * <p>作成者: 呉　春明</p>
    * <p>作成日: </p>
    * <p>更新者: </p>
    * <p>更新日: </p>
    * @param int 数字
    * @return String チェック後の文字列
    * @author 
    */ 
   public static String double2String(double d) {
       if (d == 0) {
           return "";
       } else {
          return String.valueOf(d);
       }
    }
   
   /**
    * <p>メソッド名：string2Double</p>
    * <p>概要： 指定された文字列が空文字列の場合、zeroを返す。そうでなければ、数字を返す。</p>
    * <p>作成者: 呉　春明</p>
    * <p>作成日: </p>
    * <p>更新者: </p>
    * <p>更新日: </p>
    * @param String 半角文字チェックを行う文字列
    * @return int チェック後の数字
    * @author 
    */ 
   public static double string2Double(String s) {
       if (s.equals("")) {
           return 0;
       }

       try {
           double d = Double.parseDouble(s.trim());
           return d;
       } catch (NumberFormatException ex) {
           return 0;
       }
    }

}
