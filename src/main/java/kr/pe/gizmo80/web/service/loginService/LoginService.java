package kr.pe.gizmo80.web.service.loginService;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.pe.gizmo80.web.bean.UserBean;

public interface LoginService {

    public Map<String, Object> doLogin(UserBean userBean, HttpServletRequest request) throws Exception;

}
