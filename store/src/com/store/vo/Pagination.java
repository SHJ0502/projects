package com.store.vo;

import com.store.util.NumberUtils;

public class Pagination {

	private int rowsPerPage;		// 한 페이지당 표시할 데이터 행의 개수, 기본값 5
	private int pagesPerPage;		// 한 페이지당 표시할 데이터번호 개수, 기본값 5
	private int pageNo;			// 요청한 페이지번호
	private int totalRows;			// 전체 데이터 개수(조회조건을 만족하는) 
	
	/**
	 * Pagination객체를 생성한다
	 * @param pageNo 요청한 페이지 번호
	 * @param totalRows 전체 데이터 개수
	 */
	public Pagination(int pageNo, int totalRows) {
		this.rowsPerPage = 5;
		this.pagesPerPage = 5;
		this.pageNo = pageNo;
		this.totalRows = totalRows;
	}
	
	/**
	 * Pagination객체를 생성한다
	 * @param pageNo 요청한 페이지 번호
	 * @param totalRows 전체 데이터 개수
	 * @param rowsPerPage	한 화면에 표시할 행의 개수
	 */
	public Pagination(int pageNo, int totalRows, int rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
		this.pagesPerPage = 5;
		this.pageNo = pageNo;
		this.totalRows = totalRows;
	}
	
	/**
	 * Pagination객체를 생성한다
	 * @param pageNo 요청한 페이지 번호
	 * @param totalRows 전체 데이터 개수
	 * @param rowsPerPage 한 화면에 표시할 행의 개수
	 * @param pagesPerPage	한 화면에 표시할 페이지 번호 개수
	 */
	public Pagination(int pageNo, int totalRows, int rowsPerPage, int pagesPerPage) {
		this.rowsPerPage = rowsPerPage;
		this.pagesPerPage = pagesPerPage;
		this.pageNo = pageNo;
		this.totalRows = totalRows;
	}
	
	/**
	 * 전체 페이지 개수를 반환한다.
	 * @return 총 페이지 개수
	 */
	public int getTotalPagesCount() {
		return NumberUtils.ceil(totalRows, rowsPerPage);
	}
	
	/**
	 * 전체 구간 개수를 반환한다.
	 * @return 총 구간 개수
	 */
	public int getTotalBlocksCount() {
		return NumberUtils.ceil(getTotalPagesCount(), pagesPerPage);
	}
	
	/**
	 * 요청한 페이지 번호가 속한 현재구간을 반환한다.
	 * @return 현재 구간 번호
	 */
	public int getCurrentBlockNo() {
		return NumberUtils.ceil(pageNo, pagesPerPage);
	}
	
	/**
	 * 페이지 네비게이션 시작 페이지 번호를 반환한다.
	 * @return 시작 페이지 번호
	 */
	public int getBeginPage() {
		return (getCurrentBlockNo() - 1)*pagesPerPage + 1;
	}
	
	/**
	 * 페이지 네비게이션 끝 페이지 번호를 반환한다.
	 * @return 끝 페이지 번호
	 */
	public int getEndPage() {
		return (getCurrentBlockNo() == getTotalBlocksCount() ? getTotalPagesCount() : getCurrentBlockNo()*pagesPerPage);
	}
	
	/**
	 * 요청한 페이지 번호에 해당하는 데이터의 조회 시작 번호를 반환한다
	 * @return 특정 열을 기준으로 정렬하고 순번을 부여했을 때 조회 구간의 시작 번호
	 */
	public int getBeginIndex() {
		return (pageNo - 1)*rowsPerPage + 1;
	}
	
	/**
	 * 요청항 페이지 번호에 해당하는 데이터의 조회 끝 번호를 반환한다.
	 * @return 특정 열을 기준으로 정렬하고 순번을 부여했을 때 조회 구간의 끝 번호
	 */
	public int getEndIndex() {
		return pageNo*rowsPerPage;
	}
}
