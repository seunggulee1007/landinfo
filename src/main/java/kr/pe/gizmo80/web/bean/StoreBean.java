package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_store")
public class StoreBean {

    @Id
    @Column(name = "seq_no")
    /** 일련번호*/
    private int seqNo;
    /** 매물번호 */
    @Column(length = 10)
    private String store_code;
    /** 매물명 */
    @Column(length = 1000)
    private String store_name;
    /** 해당층 */
    @Column(length = 10)
    private String level;
    /** 전체층 */
    @Column(length = 10)
    private String total_level;
    /** 매매가 */
    @Column(length = 15)
    private String trade_price;
    /** 구분 */
    @Column(length = 1)
    private String deal_cd;
    /** 매매구분 (1:매도, 2:매수) */
    @Column(length = 1)
    private String trade_cd;
    /** 종류 */
    @Column(length = 1)
    private String kinds;
    /** 분양면적 */
    @Column(length = 5)
    private String lotting_out_area;
    /** 전용면적 */
    @Column(length = 5)
    private String exclusive_area;
    /** 보증금 */
    @Column(length = 15)
    private String deposit_price;
    /** 월세 */
    @Column(length = 15)
    private String monthly_price;
    /** 대출금 */
    @Column(length = 15)
    private String rent_price;
    /** 현재업종 */
    @Column(length = 100)
    private String now_store;
    /** 추천업종 */
    @Column(length = 100)
    private String recom_store;
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
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록일자 */
    @Transient
    private String crt_dtm;
    /** 진행정보 */
    @Column(length = 1)
    private String progress_cd;
    /** 표출여부*/
    @Column(length =1)
    private String use_yn;
}
