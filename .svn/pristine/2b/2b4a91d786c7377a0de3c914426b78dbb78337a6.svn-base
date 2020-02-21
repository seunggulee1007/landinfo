package kr.pe.gizmo80.web.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

/**
 * @Entity 테이블과 링크될 클래스임을 나타낸다. 언더스코어 네이밍(_)으로 이름을 매칭. ex) SalesManager.java
 *         -> sales_manager table
 * @Table 테이블 명과 클래스명이 다를 시 테이블 명을 명시해 준다. ex)name = "tbl_apt_basic"
 * @author bomi
 *
 */

@Data
@Entity
@Table(name = "tbl_apt_basic")
public class AptBasicBean {

    @Id // 해당 테이블의 PK 필드를 나타냅니다.
    /**
     * PK의 생성 규칙을 나타냅니다. 기본값은 AUTO 로, MySQL의 auto_increment와 같이 자동증가하는 정수형 값이 됩니다.
     * 스프링 부트 2.0에선 옵션을 추가하셔야만 auto_increment가 됩니다!
     */
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "seq_no")
    /** 일련번호 */
    private int seqNo;
    /** 매물코드 */
    @Column(length = 10, nullable = false)
    private String apt_code;
    /** 동 */
    @Column(length = 10)
    private String dong;
    /** 층 */
    @Column(length = 10)
    private String level;
    /** 총층수 */
    @Column(length = 10)
    private String total_level;
    /** 방향 */
    @Column(length = 20)
    private String room_way;
    /** 방 갯수 */
    @Column(length = 2)
    private String room_count;
    /** 욕실 갯수 */
    @Column(length = 2)
    private String restroom_count;
    /** 매매가/분양가 */
    @Column(length = 15)
    private String trade_price;
    /** 임대보증금 */
    @Column(length = 15)
    private String rent_guarantee;
    /** 융자/대출금 */
    @Column(length = 15)
    private String rent_price;
    /** 취/등록세 */
    @Column(length = 15)
    private String tax;
    /** 중개수수료 */
    @Column(length = 15)
    private String guarantee;
    /** 법무비용 */
    @Column(length = 15)
    private String law_guarantee;
    /** 기타비용 */
    @Column(length = 15)
    private String other_price;
    @Column(length = 20)
    private String crt_id;
    /** 등록일 */
    @Transient
    private String crt_dtm; 
    /** 표출유무 */
    @Column(length = 1)
    private String use_yn; 
    /** 단지 일련번호 */
    @Column
    private int unit_seq; 
    /** 매도,매수 여부 */
    @Column(length = 1)
    private String trade_cd;
    /** 최종변경일 */
    @Column(length = 8)
    private String last_chg_dt; 
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
    /** 초기필요자금 */
    @Transient
    private String start_price;
    @Transient
    private String unit_nm;
    @Transient
    private String pyeong_nm;
    @Transient
    private List<FileUpBean> img_list;
}
