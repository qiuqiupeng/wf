/**
 * 
 */
package me.leep.wf.util;

import java.util.Date;
import java.util.UUID;

import me.leep.wf.entity.BaseEntity;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;

/**
 * @author 李鹏
 * 
 * 
 */
public class EntityUtil {

	public static void checkEntity(BaseEntity entity) {
		String user = SecurityUtils.getSubject().getPrincipal().toString();
		if (StringUtils.isEmpty(entity.getCreater()))
			entity.setCreater(user);
		entity.setLastUpdater(user);

		if (entity.getCreteTime() == null)
			entity.setCreteTime(new Date());
		entity.setLastUpdateTime(new Date());

		if (StringUtils.isNotBlank(entity.getRemoveFlag()))
			entity.setRemoveFlag("0");// 有效

		if (StringUtils.isEmpty(entity.getId()))
			entity.setId(UUID.randomUUID().toString());
	}

}
