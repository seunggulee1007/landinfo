package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_apt_group")
public class AptGroupBean {
    /** 매물코드 */
    @Id
    @Column(length = 10, name = "apt_code")
    private String aptCode; 
    /** 동 */
    @Column(length = 10)
    private String dong; 
    /** 층 */
    @Column(length = 10)
    private String level;
    /** 총층수*/
    @Column(length = 10)
    private String total_level;
    /** 방향 */
    @Column(length = 10)
    private String room_way;
    /** 매매가/분양가 */
    @Column(length = 15)
    private String trade_price;
    /** 납부할 금액 */
    @Column(length = 15)
    private String payment_price;
    /** 중도대출금액 */
    @Column(length = 15)
    private String middle_lone_price;
    /** 추가납부할 금액 */
    @Column(length = 15)
    private String add_payment_price;
    /** 프리미엄 */
    @Column(length = 15)
    private String premium_price;
    /** 옵션 */
    @Column(length = 15)
    private String option_price;
    /** 옵션 기납부 금액 */
    @Column(length = 15)
    private String pre_option_price;
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록일 */
    @Transient
    private String crt_dtm;
    /** 표출유부 */
    @Column(length = 1)
    private String use_yn;
    /** 일련번호 */
    @Column
    private int seq_no;
    /** 단지 일련번호 */
    @Column
    private int unit_seq;
    /** 매도, 매수 여부 */
    @Column(length = 1)
    private String trade_cd;
    /** 최종변경일 */
    @Column(length = 8)
    private String last_chg_dt;
    /** 입주예정일 */
    @Column(length = 8)
    private String move_in_dt;
    /** 세부정보 */
    @Column(length = 4000)
    private String detail_note;
    /** 운영정보 */
    @Column(length = 4000)
    private String manage_note;
    /** 사진 */
    @Column(length = 20)
    private String image;
    /** 거래구분 */
    @Column(length = 1)
    private String deal_cd;
    /** 진행정보 */
    @Column(length = 1)
    private String progress_cd;
    /** 평형 */
    @Column(length = 3)
    private String pyeong;
    /** 총규모 */
    @Transient
    private String total_price;
    /** 초기필요자금 */
    @Transient
    private String start_price;
    /** 단지명  */
    @Transient
    private String unit_nm;
    /** 평형 */
    @Transient
    private String pyeong_nm;
}
