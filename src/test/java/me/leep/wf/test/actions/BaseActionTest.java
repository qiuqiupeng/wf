package me.leep.wf.test.actions;


import java.util.HashMap;
import java.util.Map;

import me.leep.wf.util.ResourceLoaderUtil;

import org.apache.struts2.StrutsSpringTestCase;
import org.apache.struts2.dispatcher.Dispatcher;

public class BaseActionTest extends StrutsSpringTestCase {
	
	@Override
	public String[] getContextLocations() {
		
		return new String[]{"spring_other_test.xml"};
		
	}
	
	@Override
	protected Dispatcher initDispatcher(Map<String, String> params) {
	// TODO Auto-generated method stub
	if(params == null)
	params = new HashMap<String, String>();
	params.put("config", "struts-default.xml,struts-plugin.xml,conf/struts/struts.xml");
	params.put("struts.convention.result.path", "/WEB-INF/jsp");// 当然这里可以需要也可以不要，看你的具体情况
	return super.initDispatcher(params);
	}
	
	@Override
	protected void injectStrutsDependencies(Object object) {
	// TODO Auto-generated method stub
	super.injectStrutsDependencies(object);
	}
	
	@Override
	protected void initServletMockObjects() {
	// TODO Auto-generated method stub
	resourceLoader = new ResourceLoaderUtil();
	super.initServletMockObjects();
	}


}
