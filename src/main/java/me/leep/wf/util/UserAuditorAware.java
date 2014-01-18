package me.leep.wf.util;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.data.domain.AuditorAware;
  
public class UserAuditorAware implements AuditorAware<String> {
  
    @Override  
    public String getCurrentAuditor() {  

		Subject subject = SecurityUtils.getSubject();
		String user = subject.getPrincipal().toString();
        return user;
    }  
  
} 