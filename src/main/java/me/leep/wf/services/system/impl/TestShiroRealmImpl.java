/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package me.leep.wf.services.system.impl;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;


/**
 * 几个概念： 翻译不好,从官方上找来的原文. 如果不懂请 使用 “有道词典”。来源于： http://shiro.apache.org/java-authentication-guide.html
 * 
 * Subject 		Security specific user 'view' of an application user. It can be a human being, a third-party process, 
 * 					a server connecting to you application application, or even a cron job. Basically, it is anything or 
 * 					anyone communicating with your application.
 * 
 * Principals	A subjects identifying attributes. First name, last name, social security number, username
 * 
 * Credentials	secret data that are used to verify identities. Passwords, Biometric data, x509 certificates,
 * 
 * Realms		Security specific DAO, data access object, software component that talkts to a backend data source. 
 * 				If you have usernames and password in LDAP, then you would have an LDAP Realm that would communicate 
 * 				with LDAP. The idea is that you would use a realm per back-end data source and Shiro would know how 
 * 				to coordinate with these realms together to do what you have to do.
 * 
 * @author fq1798
 *
 */
public class TestShiroRealmImpl extends AuthorizingRealm {

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println(" 由于加入了缓存, 此处只会load一次：doGetAuthorizationInfo.................");
		
		//得到 doGetAuthenticationInfo 方法中传入的凭证
		ShiroUser shiroUser = (ShiroUser) principals.fromRealm(getName()).iterator().next();
		
		
		String userName = shiroUser.getName();
		if(StringUtils.equals("admin", userName)) {
			
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			
			//这个确定页面中<shiro:hasRole>标签的name的值
			info.addRole("admin");
			//这个就是页面中 <shiro:hasPermission> 标签的name的值
			info.addStringPermission("user:edit");
			
			return info;
		} else if(StringUtils.equals("test", userName)) {
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			
			//这个确定页面中<shiro:hasRole>标签的name的值
			info.addRole("test");
			//这个就是页面中 <shiro:hasPermission> 标签的name的值, 这个串 随便的,不过我还是认为  白衣的好。
			info.addStringPermission("user:view");
			
			return info;
		} else {
			return null;
		}
	}

	
	/**
	 * AuthenticationInfo represents a Subject's (aka user's) stored account information 
	 * relevant to the authentication/log-in process only. 
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		UsernamePasswordToken usernamePasswordToke = (UsernamePasswordToken)token;
		
		
		String username = usernamePasswordToke.getUsername();
		
		
		System.out.println("====================认证  begin ==========================");
		System.out.println("username: " + username);
		System.out.print("password: ");
		System.out.println(usernamePasswordToke.getPassword());
		System.out.println("principal: " + usernamePasswordToke.getPrincipal());
		System.out.println("======================认证  end ========================");
		
		
		/**
		 * Constructor that takes in a single 'primary' principal of the account, its corresponding hashed credentials, the salt used to hash the credentials, and the name of the realm to associate with the principals.
		 * This is a convenience constructor and will construct a PrincipalCollection based on the principal and realmName argument.
		 * 
		 * 
		 * Parameters:
		 * 
		 * principal - the 'primary' principal associated with the specified realm.
		 * hashedCredentials - the hashed credentials that verify the given principal.
		 * credentialsSalt - the salt used when hashing the given hashedCredentials
		 * realmName - the realm from where the principal and credentials were acquired.
		 */
		if(StringUtils.equals("admin", username)) {
			return new SimpleAuthenticationInfo(new ShiroUser("admin", "admin"), "admin", ByteSource.Util.bytes("admin"), getName());
		} else if(StringUtils.equals("test", username)) {
			return new SimpleAuthenticationInfo(new ShiroUser("test", "test"), "test", ByteSource.Util.bytes("test"), getName());
		}
		return null;
	}
	
	/**
	 * 自定义Authentication对象，使得Subject除了携带用户的登录名外还可以携带更多信息.
	 */
	public static class ShiroUser implements Serializable {
		private static final long serialVersionUID = -1373760761780840081L;
		public String loginName;
		public String name;

		public ShiroUser(String loginName, String name) {
			this.loginName = loginName;
			this.name = name;
		}

		public String getName() {
			return name;
		}

		/**
		 * 本函数输出将作为默认的<shiro:principal/>输出.
		 */
		@Override
		public String toString() {
			return loginName;
		}

//		/**
//		 * 重载equals,只计算loginName;
//		 */
//		@Override
//		public int hashCode() {
//			return HashCodeBuilder.reflectionHashCode(this, "loginName");
//		}
//
//		/**
//		 * 重载equals,只比较loginName
//		 */
//		@Override
//		public boolean equals(Object obj) {
//			return EqualsBuilder.reflectionEquals(this, obj, "loginName");
//		}
	}

	
}
