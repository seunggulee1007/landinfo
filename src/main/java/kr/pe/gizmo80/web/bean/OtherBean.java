package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_other")
public class OtherBean {

    @Id
    @Column(name = "seq_no")
    /** 일련번호 */
    private int seqNo;
    @Column(length = 16)
    /** 매물코드 */
    private String sale_code;
    @Column(length = 1000)
    /** 매물명 */
    private String sale_name;
    @Column(length = 100)
    /** 토지면적 */
    private String area_size;
    @Column(length = 100)
    /** 건물면적 */
    private String building_size;
    @Column(length = 50)
    /** 해당층 */
    private String level;
    @Column(length = 50)
    /** 총층 */
    private String total_level;
    /** 매물, 매매가 */
    @Column(length = 15)
    private String trade_price;
    /** 보증금 */
    @Column(length = 15)
    private String deposit_price;
    /** 월세 */
    @Column(length = 15)
    private String monthly_price;
    /** 방세 */
    @Column(length = 3)
    private String rooms_cnt;
    /** 욕실수 */
    @Column(length = 3)
    private String bath_cnt;
    /** 준공일 */
    @Column(length = 8)
    private String compl_dt;
    /** 주차대수 */
    @Column
    private int parking_cnt;
    /** 입주가능일 */
    @Column(length = 8)
    private String move_in_dt;
    /** 대출(융자금) */
    @Column(length = 15)
    private String rent_price;
    /** 현재용도 */
    @Column(length = 20)
    private String now_use;
    /** 추천용도 */
    @Column(length = 100)
    private String recom_use;
    /** (냉)난방방식 */
    @Column(length = 20)
    private String heat_cool_way;
    /** 지목 */
    @Column(length = 100)
    private String land_type;
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록일자 */
    @Transient
    private String crt_dtm;
    /** 매도, 매수 여부 */
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
    /** 종류 */
    @Column(length = 1)
    private String kinds;
    /** 표출유무 */
    @Column(length = 1)
    private String use_yn;
    /** 토지이용계획 */
    @Column(length = 200)
    private String use_plan;
    /** 매물구분 (3:주택, 4:건물, 5:토지) */
    @Column(length = 1)
    private String gubun;
}
