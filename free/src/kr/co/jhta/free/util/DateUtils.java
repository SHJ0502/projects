package kr.co.jhta.free.util;

import java.io.IOException;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class DateUtils {

	private static final SimpleDateFormat NORMAL_DATE_FORMAT = new SimpleDateFormat();
	
	public static String dateTosString(Date date) {
		if(date==null) {
			
		}
		return null;
		
	}
	
}
