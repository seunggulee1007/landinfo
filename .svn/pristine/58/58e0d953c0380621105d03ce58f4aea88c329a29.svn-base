package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

/**
 * 평형 구분 Bean
 * 
 * @author bomi
 *
 */
@Data
@Entity
@Table(name = "tbl_apt_area")
public class AptAreaBean {
    
    /** 일련번호 */
    @Id
    @Column(name = "seq_no")
    private int seqNo;
    /** 타입 */
    @Column(length = 3)
    private String type;
    /** 평형 */
    @Column(length = 3)
    private String pyeong;
    /** 전용면적 */
    @Column(length = 3)
    private String exclusive_area;
    /** 주거공용면적 */
    @Column(length = 3)
    private String com_liv_area;
    /** 기타공용 면적 */
    @Column(length = 3)
    private String com_etc_area;
    /** 대지지분 */
    @Column(length = 10)
    private String land_portion;
    /** 세대수 */
    @Column(length = 2)
    private String households;
    /** 등록자 */
    @Column(length = 50)
    private String crt_id;
    /** 등록일 */
    @Transient
    private String crt_dtm;
    /** 단지명 일련번호 */
    @Column
    private int unit_seq;
    /** 사진 */
    @Column(length = 20)
    private String image;
    /** 공급면적 */
    @Transient
    private String supply_area;
    /** 계약면적 */
    @Transient
    private String contract_area;

}
