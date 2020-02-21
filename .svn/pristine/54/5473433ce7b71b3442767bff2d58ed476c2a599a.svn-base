package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.UserBean;
import kr.pe.gizmo80.web.service.loginService.LoginService;

@RestController
public class LoginController {

    @Autowired
    private LoginService loginService;

    /**
     * 로그인 컨트롤러
     * 
     * @param userBean
     * @param request
     * @return map
     * @throws Exception
     */
    @RequestMapping("/doLogin")
    public Map<String, Object> doLogin(UserBean userBean, HttpServletRequest request) throws Exception {

        Map<String, Object> map = new HashMap<String, Object>();

        try {

            map = loginService.doLogin(userBean, request);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }
}
