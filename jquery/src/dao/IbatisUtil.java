package dao;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class IbatisUtil {

	private static SqlMapClient sqlmap;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("dao/SqlMapConfig.xml");
			sqlmap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}
	public static SqlMapClient getSqlMap () {
		return sqlmap;
	}
}