package kr.pe.gizmo80.web.bean;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FileUpBean {

    /** 일련번호 */
    private int seq_no;
    /** 원래 파일 이름 */
    private String origin_nm;
    /** 저장될 이름 */
    private String save_nm;
    /** 확장자 */
    private String ext;
    /** 저장 경로 */
    private String save_path;
    /** 이미지 일련번호 */
    private int img_seq;
    /** 등록일자 */
    private Timestamp crt_dtm;

}
