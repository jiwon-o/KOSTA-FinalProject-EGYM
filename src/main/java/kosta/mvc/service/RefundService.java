package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.order.NonuserRefund;
import kosta.mvc.domain.order.UserRefund;

public interface RefundService {

	/**
	 * 회원 환불테이블에 추가
	 * */
	public UserRefund insertUserRefund(UserRefund userRefund);
	
	
	/**
	 * 비회원 환불테이블에 추가
	 * */
	public NonuserRefund insertNonuserRefund(NonuserRefund nonuserRefund);
	
	/**
	 * 회원의 환불 리스트 리턴
	 * */
	public List<UserRefund> selectUserRefund();
	
	/**
	 * 비회원의 환불 리스트 리턴
	 * */
	public List<NonuserRefund> selectNonuserRefund();
	
	/**
	 * 환불 번호에 따른 회원 환불 리턴
	 * */
	public UserRefund userRefund(Long userRefundNo);
	
	
	/**
	 * 환불 번호에 따른 회원 환불 리턴
	 * */
	public NonuserRefund nonuserRefund(Long nonuserRefundNo);
	
	
	/**
	 * 관리자가 회원의 환불을 승인한다.
	 * userRefund의 refund_status "환불완료"로 수정
	 * userOrderDetail의 status 2로 수정
	 * */
	public void agreeUserRefund(Long userRefundNo);
	
	
	/**
	 * 관리자가 비회원의 환불을 승인한다.
	 * userRefund의 refund_status "환불완료"로 수정
	 * userOrderDetail의 status 2로 수정
	 * */
	public void agreeNonuserRefund(Long nonuserRefundNo);
	
}
