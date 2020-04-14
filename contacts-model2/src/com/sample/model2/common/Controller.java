package com.sample.model2.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 모든 컨트롤러가 구현해야할 메소드를 정의한다.<br/>
 * 모든 컨트롤러는 Controller의 execute(request, response)메소드를 재정의해야 한다.<br/>
 * execute(request, response)의 재정의 내용은 클라이언트의 요청을 처리하고, 뷰에 데이터를
 * 전달하기, 내부이동할 URL을 제공하기, 재요청할 URL을 제공하기 등의 작업이다.
 * @author JHTA
 *
 */
public interface Controller {
	/**
	 * 클라이언트의 요청을 처리한다.
	 * @param request 요청객체
	 * @param response 응답객체
	 * @return 내부이동 혹은 재요청할 URL을 반환한다. 재요청URL은 redirect:을 앞에 붙인다.
	 * @throws Exception
	 */
	String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
		
}
