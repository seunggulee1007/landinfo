package kr.pe.gizmo80.web.dao.mybatisDao;

import org.apache.ibatis.annotations.Mapper;

import kr.pe.gizmo80.web.bean.UserBean;

@Mapper
public interface LoginDAO {

    /** 로그인 체크 */
    public UserBean doLogin(UserBean userBean) throws Exception;

    /** 오류 회수 업데이트 */
    public int updateErrCnt(UserBean userBean) throws Exception;

}
