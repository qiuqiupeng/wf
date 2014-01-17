package me.leep.wf.util;

import me.leep.wf.entity.system.UserBean;

import org.apache.shiro.SecurityUtils;  
import org.apache.shiro.subject.Subject;  
import org.springframework.data.domain.AuditorAware;  
  
public class UserAuditorAware implements AuditorAware<UserBean> {  
  
    @Override  
    public UserBean getCurrentAuditor() {  
        Subject subject = SecurityUtils.getSubject();  
        Object object = subject.getPrincipal();  
        return (UserBean) object;  
    }  
  
} 