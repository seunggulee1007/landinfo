package kr.pe.gizmo80.web.service.houseService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.OtherBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaOtherDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.OtherDAO;

@Service
public class HouseServiceImpl extends LandInfoService implements HouseService {

    @Autowired
    private JpaOtherDAO JpaOtherDAO;
    @Autowired
    private OtherDAO OtherDAO;

    public Map<String, Object> getHouseList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<OtherBean> list = JpaOtherDAO.findAll(pageable);
            // Stream<OtherBean> stream = JpaOtherDAO.findAll().stream();

            map.put("list", list);
        } catch (Exception e) {
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
            e.printStackTrace();
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /**
     * 주택 리스트
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectHouseList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<OtherBean> list = OtherDAO.selectHouseList(Limit);
            map.put("list", list);
        } catch (Exception e) {
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
            e.printStackTrace();
        }
        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /**
     * 주택 등록
     * 
     * @param OtherBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regHouse(OtherBean otherBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;

        try {

            String apt_code = getAptCode(otherBean.getGubun(), 00, otherBean.getTrade_cd()); // 매물 코드 세팅
            otherBean.setSale_code(apt_code); // 매물 코드 빈에 세팅
            otherBean.setCrt_id(getUserId()); // 등록자 아이디 세팅
            if (OtherDAO.regHouse(otherBean) < 1) {
                result = Constants.FAIL;
                resultMsg = Constants.reg_fail;
            }
        } catch (Exception e) {
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
            e.printStackTrace();
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

}
