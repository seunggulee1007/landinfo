package kr.pe.gizmo80.web.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_user")
public class UserBean {

    @Id
    /** 아이디 */
    @Column(length = 20, name = "user_id")
    private String userId;
    /** 비밀번호 */
    @Column(length = 50)
    private String passwd;
    /** 핸드폰번호 */
    @Column(length = 11)
    private String hnd_no;
    /** 주민등록번호 */
    @Column(length = 50)
    private String resid_no;
    /** 이메일 */
    @Column(length = 50)
    private String email;
    /** 로그인 오류 횟수 */
    @Column
    private int error_cnt;
    /** 상태 (1:정상, 2: 탈퇴, 3 : 비밀번호 횟수 오류) */
    @Column(length = 1)
    private String status;
    /** 등록일자 */
    @Transient
    private String crt_dt;
    /** 사용자 이름 */
    @Column(length = 30)
    private String user_name;

}
