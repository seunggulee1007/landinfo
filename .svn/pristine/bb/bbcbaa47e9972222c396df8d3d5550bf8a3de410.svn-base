package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

/**
 * 라인노트 Bean
 * 
 * @author bomi
 *
 */
@Data
@Entity
@Table(name = "tbl_line_note")
public class LineNoteBean {

    /** 일련번호 */
    @Id
    @Column(name = "seq_no")
    private int seqNo;
    /** 제목 */
    @Column(length = 4000)
    private String title;
    /** 내용 */
    @Column(length = 4000)
    private String contents;
    /** 댓글 일련번호 */
    @Column
    private int reply_seq;
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록일 */
    @Transient
    private String crt_dtm;
    /**  현재 로그인 아이디 */
    @Transient
    private String now_id; 

}
