package me.leep.wf.services.activiti.ext;

import org.activiti.engine.impl.interceptor.Session;
import org.activiti.engine.impl.interceptor.SessionFactory;
import org.activiti.engine.impl.persistence.entity.UserEntityManager;
import org.springframework.stereotype.Service;

/**
 * Creation Details:
 * @author pedwards
 * Created: 16/05/2013
 * Time: 10:01:08 AM
 * 
 * To org.activiti.spring.SpringProcessEngineConfiguration add:
 *  <property name="customSessionFactories">
 *      <list>
 *          <bean class="me.leep.wf.services.activiti.ext.CustomGroupManagerFactory" />
 *          <bean class="me.leep.wf.services.activiti.ext.CustomUserManagerFactory" />
 *      </list>
 *  </property>
 * 
 */
@Service
public class CustomUserManagerFactory implements SessionFactory {

    public Class<?> getSessionType() {
        // original UserManager
        return UserEntityManager.class;
    }

    public Session openSession() {
        // Customized UserManger extended from org.activiti.engine.impl.persistence.entity.UserManager
        return new CustomUserManager();
    }
}
