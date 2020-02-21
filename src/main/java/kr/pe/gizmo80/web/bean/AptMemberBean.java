package kr.pe.gizmo80.web.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_apt_member")
public class AptMemberBean {

    @Id // 해당 테이블의 PK 필드를 나타냅니다.
    /**
     * PK의 생성 규칙을 나타냅니다. 기본값은 AUTO 로, MySQL의 auto_increment와 같이 자동증가하는 정수형 값이 됩니다.
     * 스프링 부트 2.0에선 옵션을 추가하셔야만 auto_increment가 됩니다!
     */
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "seq_no")
    /** 일련번호 */
    private int seqNo;
    /** 매물번호 */
    @Column(length = 16)
    private String apt_code;
    /** 매도,매수 여부 */
    @Column(length = 1)
    private String trade_cd;
    /** 평형 */
    @Column(length = 3)
    private String pyeong;
    /** 거래구분 */
    @Column(length = 1)
    private String deal_cd; 
    /** 진행정보 */
    @Column(length = 1)
    private String progress_cd;
    /** 표출여부 */
    @Column(length = 1)
    private String use_yn;
    /**  최종변경일 */
    @Column(length = 8)
    private String last_chg_dt;
    /** 단지 일련번호 */
    @Column
    private int unit_seq;
    /** 단지명 */
    @Transient
    private String unit_name; 
    /** 기존면적 */
    @Column(length = 10)
    private String origin_area;
    /** 층 */
    @Column(length = 10)
    private String level;
    /** 총층수 */
    @Column(length = 10)
    private String total_level;
    /** 기존 임대 내역 */
    @Column(length = 50)
    private String origin_lease_history;
    /** 신규단지 일련번호 */
    @Column
    private int new_unit_seq;
    /** 신규단지명 */
    @Transient
    private String new_unit_name;
    /**  신규 면적 */
    @Column(length = 10)
    private String new_area;
    /** 신규 동 */
    @Column(length = 3)
    private String new_dong;
    /** 신규 해당 층 */
    @Column(length = 3)
    private String new_level;
    /** 신규 총층 */
    @Column(length = 3)
    private String new_total_level;
    /** 방향 */
    @Column(length = 20)
    private String room_way;
    /** 매매가 */
    @Column(length = 15)
    private String trade_price;
    /** 임대보증금 */
    @Column(length = 15)
    private String rent_guarantee;
    /** 융자/대출금 */
    @Column(length = 15)
    private String rent_price;
    /** 이주비(기본) */
    @Column(length =15)
    private String migration_basic;
    /** 이주비(추가) */
    @Column(length = 15)
    private String migration_add;
    /** 추가납부할 금액 */
    @Column(length = 15)
    private String add_payment_price;
    /** 기납부 금액 */
    @Column(length = 15)
    private String pre_payment_price;
    /** 예상 취득세 */
    @Column(length = 15)
    private String expect_taking_price;
    /** 중개수수료*/
    @Column(length = 15)
    private String brokerage_fee;
    /** 법무 비용 */
    @Column(length = 15)
    private String legal_costs;
    /** 세부 정보 */
    @Column(length = 4000)
    private String detail_note;
    /** 운영정보 */
    @Column(length = 4000)
    private String manage_note;
    /** 이미지 */
    @Column
    private int image;
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록일자 */
    @Transient
    private String crt_dtm;
    
}