package me.leep.wf.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;

/**
 * 基础持久层接口
 * 
 * @author 李鹏 2013-10-7
 */
@NoRepositoryBean
public interface BaseRepository<T, ID extends Serializable> extends
		JpaRepository<T, ID>, JpaSpecificationExecutor<T> {
	/**
	 * 通过id直接查找实体
	 * 
	 * @param id
	 *            主键ID
	 * @return 实体
	 */
	T findById(String id);


}