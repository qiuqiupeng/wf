package person.leep.wf.base.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	SimpleDateFormat sdf =null;
	/**
	 * 传入指定格式的日期字符串，返回java.sql.Timestamp类型的日�?
	 * @param dateStr 格式yyyy-MM-dd
	 * @return java.sql.Timestamp类型日期
	 */
	public static java.sql.Timestamp strToSqlDate(String dateStr){	
		return null;
	}
	
	/**
	 * 传入指定格式的日期字符串，返回java.util.Date类型的日�?
	 * @param dateStr
	 * @return java.util.Date类型日期
	 */
	public static java.util.Date strToDate(String dateStr)throws ParseException {	
		Date aDate = null;
        try {
            aDate = convertStringToDate("yyyy-MM-dd", dateStr);
        } catch (ParseException pe) {
            throw new ParseException(pe.getMessage(),
                                     pe.getErrorOffset());
        }
        return aDate;
	}
	/**
	 * 将日期字符串按指定格式转换成日期类型
	 * 
	 * @param aMask
	 *            指定的日期格式，如:yyyy-MM-dd
	 * @param strDate
	 *            待转换的日期字符串
	 */
    
    public static final Date convertStringToDate(String aMask, String strDate)
      	throws ParseException {
        SimpleDateFormat df = null;
        Date date = null;
        df = new SimpleDateFormat(aMask);

        try {
            date = df.parse(strDate);
        } catch (ParseException pe) {
            throw pe;
        }
        return (date);
    }
	/**
	 * 传入java.sql.Timestamp类型日期、要返回的日期格式，返回指定格式的日期字符串
	 * @param sqlDate
	 * @param String dateStyle
	 * @return 返回指定格式的日期字符串
	 */
	public static String sqlDateToStr(java.sql.Timestamp sqlDate,String dateStyle) {
		return null;
	}
	
	/**
	 * 传入java.util.Date类型日期、要返回的日期格式，返回指定格式的日期字符串
	 * @param date
	 * @param dateStyle
	 * @return 返回指定格式的日期字符串
	 */
	public static String dateToStr(java.util.Date date,String dateStyle) {
		return null;
	}
	
	public static Date currentDate() {
		return new Date();
	}
	
	public static Timestamp getCurrentSqlDate(){
		Date utilDate = new java.util.Date();
		Timestamp currentSqlDate = new Timestamp(utilDate.getTime());
		return currentSqlDate;
	}
	
	public static Timestamp getCurrentSqlTimestamp() {
		Timestamp currentSqlTime = new Timestamp(new Date().getTime());
		return currentSqlTime;
	}
	
	public static String getStandardDateString(Date date){
		if(date == null){
			return "";
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = format.format(date);
		return strDate;
	}
	
	public static String getStandardMinuteString(Date date){
		if(date == null){
			return null;
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String strDate = format.format(date);
		return strDate;
	}
	
	public static String formatDateDay(Date date){
	    return formatDate(date, "yyyyMMdd");
	}
	
	public static String formatDate(Date date, String pattern){
	    SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
	    return dateFormat.format(date);
	}
	 
	public static String getNDayBeforeCurrentDate(int n){   
		Calendar c = Calendar.getInstance();   
	    c.add(c.DAY_OF_MONTH,-n);   
	    return ""+c.get(c.YEAR)+"-"+(c.get(c.MONTH)+1)+"-"+c.get(c.DATE);  
	}
	
	public static String getNYearBeforeCurrentDate(int n){   
		Calendar c = Calendar.getInstance();   
	    c.add(c.DAY_OF_YEAR,-n);   
	    return ""+c.get(c.YEAR)+"-"+(c.get(c.MONTH)+1)+"-"+c.get(c.DATE);  
	}
	 
	public static String getNDayBeforeCurrentDate(Date date , int n){   
		Calendar c = Calendar.getInstance();  
	    c.setTime(date);
	    c.add(c.DAY_OF_MONTH,-n);   
	    return	""+c.get(c.YEAR)+"-"+(c.get(c.MONTH)+1)+"-"+c.get(c.DATE);  
	}
	 
	 /**
	  * 设置时间为分秒方便oracle查询
	  */
	public static Timestamp getBeginDateTimestamp(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		String beginDateString = sdf.format(date);
		return  Timestamp.valueOf(beginDateString);
	}
	 
	public static Timestamp getEndDateTimestamp(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
		String beginDateString = sdf.format(date);
		return  Timestamp.valueOf(beginDateString);
	}
	 
	public static String getStandardSecondtring(java.util.Date date){
		if(date == null){
			return null;
		}
			
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
		String strDate = format.format(date);
		return strDate;
	}
		
	public static boolean compareTwoDateBigOrSmall(String fromDate, String toDate, String curDate){   
		Date dateFrom = switchStringToDate(fromDate);   
	    Date dateTo =  switchStringToDate(toDate);
	    Date curDatess = switchStringToDate(curDate);
	    
	    if(curDatess.after(dateFrom) && curDatess.before(dateTo)){   
	    	return   true;   
	    }else{   
	    	return   false;   
	    }   
	}
	    
	public static boolean isDateBefore(String date1,String date2){
		try{
	    	DateFormat df = DateFormat.getDateTimeInstance();
	    	return df.parse(date1).before(df.parse(date2)); 
	    }catch(ParseException e){
	    	System.out.print("[SYS] " + e.getMessage());
	    	return false;
	    }
	}

	//将一个日期字符串转化成日期   
	public static Date switchStringToDate(String sDate){   
		Date date = null;   
	          
		try{   
			SimpleDateFormat df = new   SimpleDateFormat("HH:mm:ss");   
	        date = df.parse(sDate);   
	    }catch(Exception e){   
	        System.out.println("日期转换失败:"+e.getMessage());   
	    }   
	    return date;   
	}
	
	//将一个日期字符串转化成日期   
	public static Date switchStringToDateYyyyMMdd(String sDate){   
		Date date = null;   
	          
		try{   
			SimpleDateFormat df = new   SimpleDateFormat("yyyy-MM-dd");   
	        date = df.parse(sDate);   
	    }catch(Exception e){   
	        System.out.println("日期转换失败:"+e.getMessage());   
	    }   
	    return date;   
	}
	
	public static String switchDateToString(Date sDate){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(sDate);
	}
}