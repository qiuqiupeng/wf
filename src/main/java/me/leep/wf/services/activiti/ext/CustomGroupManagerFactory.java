package me.leep.wf.services.activiti.ext;

import org.activiti.engine.impl.interceptor.Session;
import org.activiti.engine.impl.interceptor.SessionFactory;
import org.activiti.engine.impl.persistence.entity.GroupIdentityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomGroupManagerFactory implements SessionFactory {
	@Autowired
	private CustomGroupManager customGroupManager;

    public Class<?> getSessionType() {
        return GroupIdentityManager.class;
    }

    public Session openSession() {
        return customGroupManager;
    }
}