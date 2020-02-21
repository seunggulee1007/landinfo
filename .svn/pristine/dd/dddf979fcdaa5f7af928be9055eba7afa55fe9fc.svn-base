package kr.pe.gizmo80.com.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import kr.pe.gizmo80.web.bean.UserBean;
import kr.pe.gizmo80.web.dao.mybatisDao.CommonDAO;

public class LandInfoService {

    @Autowired
    private CommonDAO commonDAO;

    // 현재 세션 리턴
    public HttpSession getSession() {
        return (HttpSession) RequestContextHolder.currentRequestAttributes()
                .resolveReference(RequestAttributes.REFERENCE_SESSION);
    }

    public String getUserId() {

        UserBean userBean = getBean();
        String userId = userBean.getUserId();

        return userId;
    }

    public String getUserNm() {
        UserBean userBean = getBean();
        String userNm = userBean.getUser_name();
        return userNm;
    }

    public UserBean getBean() {
        HttpSession session = getSession();
        if (session == null)
            return null;
        UserBean userBean = (UserBean) session.getAttribute("UserBean");
        return userBean;
    }

    /**
     * 매물번호 리턴 프로세스
     * 
     * @param division
     * @param unit
     * @param type
     * @return
     * @throws Exception
     */
    public String getAptCode(String division, int unit, String type) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String apt_code = null;
        try {
            String unit_seq = Integer.toString(unit);
            if (unit_seq.length() < 2) {
                unit_seq = "0" + unit_seq;
            }
            map.put("division", division); // 구분( 1 : 관내, 2 : 상가 , 3 : 주택, 4 : 건물, 5 : 토지)
            map.put("unit", unit_seq); // 단지명( 00 : 아파트 제외한 나머지)
            map.put("type", type); // 유형 ( 1 : 매도, 2 : 매수)

            apt_code = commonDAO.selectAptCode(map);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return apt_code;
    }

}
