package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Transient;

import lombok.Data;

@Data
public class CounselBean {

    /** 일련번호 */
    private int seq_no;
    /** 타입 */
    private String type;
    /** 평형 */
    private String pyeong;
    /** 전용면적 */
    private String exclusive_area;
    /** 주거공용면적 */
    private String com_liv_area;
    /** 기타공용 면적 */
    private String com_etc_area;
    /** 대지 지분 */
    private String land_portion;
    /** 세대수 */
    private String households;
    /** 등록자 */
    private String crt_id;
    /** 등록일 */
    @Transient
    private String crt_dtm;
    /** 단지명 일련번호 */
    private int unit_seq;
    /** 사진 */
    private String image;
    /** 매물코드 */
    private String apt_code;
    /** 동 */
    private String dong;
    /** 층 */
    private String level;
    /** 총층수 */
    private String total_level;
    /** 방향 */
    private String room_way;
    /** 방 갯수 */
    private String room_count;
    /** 욕실 갯수 */
    private String restroom_count;
    /** 매매가/분양가 */
    private String trade_price;
    /** 임대보증금 */
    private String rent_guarantee;
    /** 융자/대출금 */
    private String rent_price;
    /** 취/등록세 */
    private String tax;
    /** 중개수수료 */
    private String guarantee;
    /** 법무비용 */
    private String law_guarantee;
    /** 기타비용 */
    private String other_price;
    @Column(length = 15)
    private String payment_price; // 납부할 금액
    @Column(length = 15)
    private String middle_lone_price; // 중도금대출액
    @Column(length = 15)
    private String add_payment_price; // 추가납부할금액
    @Column(length = 15)
    private String premium_price; // 프리미엄
    @Column(length = 15)
    private String option_price; // 옵션
    @Column(length = 15)
    private String pre_option_price; // 옵션 기납부 금액
    @Column(length = 1)
    private String use_yn; // 표출 유무
    @Column(length = 1)
    private String trade_cd; // 매도,매수 여부
    @Column(length = 8)
    private String last_chg_dt; // 최종변경일
    @Column(length = 8)
    private String move_in_dt; // 입주예정일
    @Column(length = 4000)
    private String detail_note; // 세부정보
    @Column(length = 4000)
    private String manage_note; // 운영정보
    @Column(length = 1)
    private String deal_cd; // 거래구분
    @Column(length = 1)
    private String progress_cd; // 진행정보
    @Transient
    private String total_price; // 총규모
    @Transient
    private String start_price; // 초기필요자금

}
