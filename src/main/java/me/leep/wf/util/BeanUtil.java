/**
 * 
 */
package me.leep.wf.util;

import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntity;

import com.alibaba.tamper.BeanCopy;
import com.thoughtworks.xstream.XStream;

/**
 * @author 李鹏
 * 
 * 
 */
public class BeanUtil {
	private static BeanCopy copy;

	public static void copyBean(Object source, Object targer) {
		copy = BeanCopy.create(source.getClass(), targer.getClass());
		copy.copy(source, targer);
		copy = null;
	}
	
	public static void backupField(BaseEntity source, BaseDto targer) {
		targer.setCreater(source.getCreater());
		targer.setCreteTime(source.getCreteTime());
		targer.setRemoveFlag(source.getRemoveFlag());
	}

	/**
	 * 通过jaxb将对象转化成xml
	 */
	public static String jaxbB2X(Object o) throws Exception {
		JAXBContext context = JAXBContext.newInstance(o.getClass());
		Marshaller m = context.createMarshaller();
		StringWriter sw = new StringWriter();
		m.marshal(o, sw);
		return sw.toString();
	}
	
	/**
	 * 通过xtream将对象转化成xml
	 */
	public static String bean2XML(Object o) throws Exception {
		XStream xstream = new XStream();
		return xstream.toXML(o);
	}
	
	/**
	 * 功过xtream将xml转换成bean
	 */
	public static Object xml2Bean(String xml) throws Exception {
		XStream xstream = new XStream();
		return xstream.fromXML(xml);
	}
	
	/**
	 * 功过xtream将xml转换成bean
	 */
	public static Object xml2Bean(InputStream xml) throws Exception {
		XStream xstream = new XStream();
		return xstream.fromXML(xml);
	}
	
	/**
	 * 功过xtream将xml转换成bean
	 */
	public static Object xml2Bean(Reader xml) throws Exception {
		XStream xstream = new XStream();
		return xstream.fromXML(xml);
	}

}
