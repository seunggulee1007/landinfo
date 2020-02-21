package kr.pe.gizmo80.web.service.loginService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.UserBean;
import kr.pe.gizmo80.web.dao.mybatisDao.LoginDAO;

@Service
public class LoginServiceImpl extends LandInfoService implements LoginService {

    @Autowired
    private LoginDAO loginDAO;

    /**
     * 로그인 프로세스
     */
    public Map<String, Object> doLogin(UserBean userBean, HttpServletRequest request) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.FAIL;
        String resultMsg = "";

        try {
            UserBean getBean = loginDAO.doLogin(userBean); // 로그인 체크
            if (ObjectUtils.isEmpty(getBean)) { // 조회 결과가 없으면
                resultMsg = "아이디가 존재하지 않습니다.";

            } else {

                int err_cnt = getBean.getError_cnt(); // 로그인 오류 횟수

                if (err_cnt > 5) { // 5번 이상 오류 시 로그인 제한으로 업데이트

                    resultMsg = "비밀번호 오류 횟수 초과. 관리자에게 문의하세요.";
                    userBean.setStatus("3"); // status 1 : 정상, 2 : 해지,탈퇴 , 3 : 로그인 오류 제한

                } else if ("N".equals(getBean.getPasswd())) { // 입력한 비밀번호가 다르면 'N', 같으면 'Y'를 리턴

                    userBean.setError_cnt(++err_cnt); // 오류 횟수 카운트
                    resultMsg = "비밀번호가 일치하지 않습니다. 오류 회수 " + err_cnt;

                } else if ("2".equals(getBean.getStatus())) { // 비밀번호가 맞더라도 해지된 고객이면 로그인을 할 수 없다.(관리자의 경우도 마찬가지.)

                    resultMsg = "해지된 고객입니다. 관리자에게 문의하세요.";

                } else { // 정상

                    result = Constants.OK;
                    HttpSession session = request.getSession(); // 세션 객체 세팅
                    session.setAttribute("UserBean", getBean); // 세션 세팅
                    userBean.setError_cnt(0); // 정상이므로 오류 횟수 0으로 초기화

                }

                loginDAO.updateErrCnt(userBean);

            }
        } catch (Exception e) {
            e.printStackTrace();
            result = "fail";
            resultMsg = "시스템오류!!!" + e.getMessage();
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }
}
