package kr.co.jhta.contacts.ibatis;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class IbatisUtils {

	private static SqlMapClient sqlmap;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("kr/co/jhta/contacts/ibatis/SqlMapConfig.xml");
			sqlmap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	private IbatisUtils() {}
	
	public static SqlMapClient getSqlmap() {
		return sqlmap;
	}
}
