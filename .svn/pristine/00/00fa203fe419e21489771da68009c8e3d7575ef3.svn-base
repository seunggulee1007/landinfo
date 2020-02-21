package kr.pe.gizmo80.web.service.aptBasicService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.AptBasicBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaAptBasicDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.AptBasicDAO;

@Service
public class AptBasicServiceImpl extends LandInfoService implements AptBasicService {

    @Autowired
    private JpaAptBasicDAO JpaAptBasicDAO;
    @Autowired
    private AptBasicDAO aptBasicDAO;

    public Map<String, Object> getAptBasicList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<AptBasicBean> list = JpaAptBasicDAO.findAll(pageable);

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
     * 아파트 리스트
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectAptBasicList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<AptBasicBean> list = aptBasicDAO.selectAptBasicList(Limit);
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
     * 아파트 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regAptBasic(AptBasicBean aptBasicBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;

        try {
            String apt_code = getAptCode("1", aptBasicBean.getUnit_seq(), aptBasicBean.getTrade_cd()); // 매물 코드 세팅
            aptBasicBean.setApt_code(apt_code); // 매물 코드 빈에 세팅
            aptBasicBean.setCrt_id(getUserId()); // 등록자 아이디 세팅
            if (aptBasicDAO.regAptBasic(aptBasicBean) < 1) {
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
