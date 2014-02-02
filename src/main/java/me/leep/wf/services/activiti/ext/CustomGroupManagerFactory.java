package me.leep.wf.services.activiti.ext;

import org.activiti.engine.impl.interceptor.Session;
import org.activiti.engine.impl.interceptor.SessionFactory;
import org.activiti.engine.impl.persistence.entity.GroupEntityManager;
import org.springframework.stereotype.Service;

@Service
public class CustomGroupManagerFactory implements SessionFactory {

    public Class<?> getSessionType() {
        return GroupEntityManager.class;
    }

    public Session openSession() {
        return new CustomGroupManager();
    }
}