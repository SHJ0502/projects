package kr.pren.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.sun.org.apache.regexp.internal.recompile;

import kr.pren.util.IbatisUtil;
import kr.pren.vo.ItemImage;
import kr.pren.vo.SaleItem;

public class ItemImageDao {
	private static ItemImageDao instance = new ItemImageDao();
	private ItemImageDao() {}
	public static  ItemImageDao getInstance() {
		return instance;
	}
	
	private SqlMapClient sqlmap = IbatisUtil.getSqlmap();
	
	// 서브 이미지 등록
	public void insertSubItemImage(ItemImage itemImage) throws SQLException {
		sqlmap.insert("itemimages.insertSubItemImage",itemImage);
	}
	
	//서브이미지 조회하기
	
	@SuppressWarnings("unchecked")
	public List<ItemImage> getItemImageByNo (int imageNo) throws SQLException {
		return sqlmap.queryForList("itemimages.getItemImageByNo", imageNo);
	}
	
	// 서브이미지 추가 한거 출력 기능(회원번호에 맞는 이미지)
	@SuppressWarnings("unchecked")
	public List<ItemImage> getItemImageSearchByUserNo(int userNo) throws SQLException{
		return sqlmap.queryForList("itemimages.getItemImageByNo", userNo);
	}
	// 서브이미지 아이템번호에 맞는것 삭제
	public void deleteAllIamageByItemNo(int itemNo) throws SQLException{
		sqlmap.delete("itemimages.deleteAllIamageByItemNo",itemNo);
	}
}
