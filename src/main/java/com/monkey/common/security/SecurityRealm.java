package com.monkey.common.security;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.monkey.common.bean.Permission;
import com.monkey.common.bean.User;
import com.monkey.common.config.Config;
import com.monkey.common.constant.Constant;
import com.monkey.common.dao.LoginDao;
import com.monkey.common.dao.PermissionDao;
import com.monkey.common.dao.UserRoleDao;

/**
 * 登录与权限验证
 * @author monkey
 *
 */
public class SecurityRealm extends AuthorizingRealm {

	private static SecurityRealm instance;
	
	private SecurityRealm(){}
	
	public static SecurityRealm getInstance(){
		
		if(instance == null){
			return new SecurityRealm();
		}
		
		return instance;
	}
	
	@Autowired
	private LoginDao loginDao;
	
	@Autowired
	private UserRoleDao userRoleDao;
	
	@Autowired
	private PermissionDao permissionDao;

	/*
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		
		String username = (String)userToken.getPrincipal();
		
		User user = loginDao.login(username);

		if (user == null) {
			
			throw new AccountException("用户不存在！");
			
		}

		return new SimpleAuthenticationInfo(user, user.getPassword(),ByteSource.Util.bytes(user.getSalt()),getName());

	}

	/*
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) throws AuthenticationException{

		User user =  (User) principals.getPrimaryPrincipal();

		Set<String> permissions = new HashSet<String>();
		
		Set<Permission> menus = new HashSet<Permission>();
		
		if (user == null) {
			throw new AccountException("用户不存在！");
		}
		
		List<Integer> rids = userRoleDao.selectRids(user.getId());
		
		for (Integer rid : rids) {
			for (Permission permission : permissionDao.selectPermission(rid)) {
				
				permissions.add(permission.getPermission());
				
				if(permission.getType().equals(Constant.SRC_MENU) ){
					menus.add(permission);
				}
				
			}
		}
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		
		info.addStringPermissions(permissions);
		
		return info;
	}

	/*
	 * 更新用户授权信息缓存.
	 */
	public void clearCachedAuthorizationInfo(String principal) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
		clearCachedAuthorizationInfo(principals);
	}

	/*
	 * 清除所有用户授权信息缓存
	 */
	public void clearAllCachedAuthorizationInfo() {
		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
		if (cache != null) {
			for (Object key : cache.keys()) {
				cache.remove(key);
			}
		}
	}
	
	/**
	 * 加密算法
	 * @param password
	 * @param salt
	 * @return
	 */
	public String encript(String password,String salt) {
		
		int times = Integer.parseInt(Config.getProperty(Constant.ENPT_TMS));
		Md5Hash result = new Md5Hash(password, salt, times);
		return result.toString();
	}

}
