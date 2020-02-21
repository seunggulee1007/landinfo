package kr.pe.gizmo80.web.bean;

import lombok.Data;

@Data
public class InqueryBean {
    
    /** 일련번호 */
    private int seq_no;
    /** 휴대폰 번호*/
    private String hnd_no;
    /** 구분(1:조합원매물,2:분양권,3:아파트)*/
    private String kinds;
    /** 상담일자 */
    private String counsel_dt;
    /** 등록일자 */
    private String crt_dtm;
    /** 매물 일련번호 */
    private String product_cd;
    /** 메모 */
    private String memo;
    /** 아파트 빈 */
    private AptBasicBean aptBasicBean;
    /** 분양권 */
    private AptGroupBean aptGroupBean;
    /** 조합원매물 */
    private AptMemberBean aptMemberBean;
    
}
