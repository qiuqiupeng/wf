/**
 * 
 */
package me.leep.wf.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import me.leep.wf.util.FileUtil;
import me.leep.wf.util.PropertiesUtil;

import org.apache.log4j.jdbc.JDBCAppender;
import org.apache.log4j.spi.ErrorCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jolbox.bonecp.BoneCPDataSource;

/**
 * @author 李鹏
 * 
 * 
 */
@Component
public class BonecpPoolAppender extends JDBCAppender {

	@Autowired
	private BoneCPDataSource dataSource;
	protected Connection connection;

	/**
	 * 
	 */
	public BonecpPoolAppender() {
		// TODO 自动生成的构造函数存根
	}

	@Override
	protected void closeConnection(Connection con) {
		try {
			if (connection != null && !connection.isClosed())
				connection.close();
		} catch (SQLException e) {
			errorHandler.error("Error closing connection", e,
					ErrorCode.GENERIC_FAILURE);
		}
	}

	@Override
	protected Connection getConnection() throws SQLException {
		if (connection != null && !connection.isClosed()) {
			return connection;
		} else {
			try {
				if (dataSource == null) {
					Properties p = PropertiesUtil.loadPropertiesFile(FileUtil
							.getFile("hibernate.properties"));

					Class.forName(p.getProperty("hibernate.connection.driver"));
					String url = p.getProperty("hibernate.connection.url");
					String username = p
							.getProperty("hibernate.connection.username");
					String password = p
							.getProperty("hibernate.connection.password");
					connection = DriverManager.getConnection(url, username,
							password);
				} else
					connection = dataSource.getConnection();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return connection;
		}

	}

	/**
	 * @param connection
	 *            要设置的 connection
	 */
	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	/**
	 * @return dataSource
	 */
	public BoneCPDataSource getDataSource() {
		return dataSource;
	}

	/**
	 * @param dataSource
	 *            要设置的 dataSource
	 */
	public void setDataSource(BoneCPDataSource dataSource) {
		this.dataSource = dataSource;
	}

}
