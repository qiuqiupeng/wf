package person.leep.wf.base.util;

import java.util.regex.Pattern;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author: 
 * @version: 1.0
 */
public class CommonValidateUtils
{

 //=====================判断时间是否正确格式
    public static boolean checkDate(String date,String format){
            DateFormat df = new SimpleDateFormat(format);
            Date d = null;
            try{
                d = df.parse(date);
            }catch(Exception e){
                //如果不能转换,肯定是错误格式
                return false;
            }
            String s1 = df.format(d);
            // 转换后的日期再转换回String,如果不等,逻辑错误.如format为"yyyy-MM-dd",date为
            // "2006-02-31",转换为日期后再转换回字符串为"2006-03-03",说明格式虽然对,但日期
            // 逻辑上不对.
            return date.equals(s1);
        }
//=====================判断时间是否正确格式



//=====================判断邮编格式是否正确
    public static boolean checkZipcode(String zipcode){
        Pattern pattern = Pattern.compile("^[1-9]\\d{5}$");
        return pattern.matcher(zipcode).matches();

    }
//======================判断邮编格式是否正确

//=====================判断邮件email是否正确格式

    public static  boolean checkEmail(String email){
        Pattern pattern = Pattern.compile("^\\w+([-.]\\w+)*@\\w+([-]\\w+)*\\.(\\w+([-]\\w+)*\\.)*[a-zA-Z]{2,5}$");
        return pattern.matcher(email).matches();
    }
//=====================判断邮件email是否正确格式

//======================判断网址是否有效
    public static boolean checkSite(String site){
        Pattern pattern = Pattern.compile("^(http://||https://){0,1}www([.][A-Za-z0-9]+)+[/]{0,1}$");
        return pattern.matcher( site).matches();
    }

//=====================判断网址是否有效
//=====================判断电话是否有效
    //分机号可有可无
 public static boolean checkPhone(String phone){
     Pattern pattern = Pattern.compile("^0(\\d{2}||\\d{3})-(\\d{7}||\\d{8})(-\\d{1,4}){0,1}");
     return pattern.matcher(phone).matches();
 }


//=====================判断电话是否有效



//=====================判断手机号Mobile是否正确格式


    public  static boolean checkMobile(String mobile){
        Pattern pattern = Pattern.compile("^13\\d{9}||15\\d{9}$");
        return  pattern.matcher(mobile).matches();
    }
//=====================判断手机号phone是否正确格式


//    public static void main(String[] args){
////        String email = "yu.zhang@sinitek.info";
////        System.out.println(checkEmail(email));
//        String mobile = "15012345678";
//        System.out.println(checkMobile(mobile));
//
//    }
}

