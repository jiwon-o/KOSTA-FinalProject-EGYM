/**
 * 2021-11-26
 * 서은지
 * */
package kosta.mvc.domain;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "board_no_seq")
	@SequenceGenerator(sequenceName = "board_no_seq", allocationSize = 1, name = "board_no_seq")
	@Column(name = "BOARD_NO")
	private Long boardNo; //게시판 번호(게시판 카테고리)
	
	private String boardTitle; //제목
	
	@Lob
	private String boardContent; // 글내용
	
	private int boardKind; //종류 - 게시판 카테고리 자기자신의 기본키를 참조하는 외래키여야 하지 않을까?
	
	@CreationTimestamp
	private LocalDateTime boardRegdate; //등록일
	
	@UpdateTimestamp
	private LocalDateTime boardUpdate; //55수정일
	
	private int boardReadnum; //조회수
	private int boardState; // 0 :공개 / 1 :비공개 / 2 :삭제
	private int boardRecommend; //추천수 
	
	
	//회원번호 다 : 1
	@ManyToOne
	@JoinColumn(name = "member_no")
	private Member member;
	
	//챌린지번호 다 : 1?
	@ManyToOne
	@JoinColumn(name = "CHALLENGE_ID")
	private Challenge challenge;
		
	private String memberNickname; //회원 닉네임 다 : 1
	
	@ManyToOne
	@JoinColumn(name = "tag_no")
	private Tag tag;
}
