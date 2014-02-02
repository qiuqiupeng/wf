package me.leep.wf.services.activiti.ext;


import java.util.List;

import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.identity.UserQuery;
import org.activiti.engine.impl.Page;
import org.activiti.engine.impl.UserQueryImpl;
import org.activiti.engine.impl.persistence.entity.UserEntity;
import org.activiti.engine.impl.persistence.entity.UserEntityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class CustomUserManager extends UserEntityManager {
    
    private static Logger log = LoggerFactory.getLogger(CustomUserManager.class.getName());
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#findUserById(java.lang.String)
     */
    public UserEntity findUserById(String userId) {
        log.debug("findUserById called with userId: " + userId);
        UserEntity foundUser = super.findUserById(userId);
        log.debug("Found user - id:" + foundUser.getId() + " fullname:" + foundUser.getFirstName() + " " + foundUser.getLastName());
        return foundUser;
    }

    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#checkPassword(java.lang.String, java.lang.String)
     */
    public Boolean checkPassword(String userId, String password) {
    	System.out.println("------------------------");
        boolean result = super.checkPassword(userId, password);
        log.debug("checkPassword called with userId: " + userId + " passwd: " + password + " result: " + result);
        return result;
    }

    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#findGroupsByUser(java.lang.String)
     */
    public List<Group> findGroupsByUser(String userId) {
        log.debug("findGroupsByUser called with userId: " + userId);
        List<Group> userGroups = super.findGroupsByUser(userId);
        log.debug("User: " + userId + " belongs to groups: ");
        for(Group group : userGroups) {
            log.debug("Id: " + group.getId() + " name: " + group.getName() + " type: " + group.getType()); 
        }
        return userGroups;
    }
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#createNewUserQuery()
     */
    @Override
    public UserQuery createNewUserQuery() {
        log.debug("CreateNewUserQuery called");
        return super.createNewUserQuery();
    }
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#findUserCountByQueryCriteria(org.activiti.engine.impl.UserQueryImpl)
     */
    @Override
    public long findUserCountByQueryCriteria(UserQueryImpl query) {
        log.debug("findUserCountByQueryCriteria called, query: " + query);
        long count = super.findUserCountByQueryCriteria(query);
        log.debug("Found " + count + " users");
        return count;
    }
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#findUserByQueryCriteria(org.activiti.engine.impl.UserQueryImpl, org.activiti.engine.impl.Page)
     */
    @Override
    public List<User> findUserByQueryCriteria(UserQueryImpl query, Page page) {
        log.debug("FindUserByQueryCriteria called, query: " + query + " page: " + page);
        return super.findUserByQueryCriteria(query, page);
    }


    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#createNewUser(java.lang.String)
     */
    @Override
    public User createNewUser(String userId) {
        throw new UnsupportedOperationException();
    }
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#insertUser(org.activiti.engine.identity.User)
     */
    @Override
    public void insertUser(User user) {
        throw new UnsupportedOperationException();
    }

    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#updateUser(org.activiti.engine.impl.persistence.entity.UserEntity)
     */
    @Override
    public void updateUser(UserEntity updatedUser) {
        throw new UnsupportedOperationException();
    } 
    
    /* (non-Javadoc)
     * @see org.activiti.engine.impl.persistence.entity.UserEntityManager#deleteUser(java.lang.String)
     */
    @Override
    public void deleteUser(String arg0) {
        throw new UnsupportedOperationException();
    }
}