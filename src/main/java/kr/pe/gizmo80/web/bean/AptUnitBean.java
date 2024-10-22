package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

/**
 * 단지명 Bean
 * 
 * @author bomi
 *
 */
@Data
@Entity
@Table(name = "tbl_apt_unit")
public class AptUnitBean {

    @Id
    @Column(name = "seq_no")
    /** 일련번호 */
    private int seqNo;
    /** 단지명 */
    @Column(length = 50)
    private String unit_name;
    /** 특징 */
    @Column(length = 20)
    private String note;
    /** 소개 */
    @Column(length = 40)
    private String info;
    /** 이미지 */
    @Column(length = 20)
    private String image;
    /** 등록자 */
    @Column(length = 20)
    private String crt_id;
    /** 등록시간 */
    @Transient
    private String crt_dtm;
}
