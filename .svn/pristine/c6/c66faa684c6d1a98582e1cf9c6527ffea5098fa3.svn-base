package kr.pe.gizmo80.web.service.aptGroupService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.AptGroupBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaAptGroupDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.AptGroupDAO;

@Service
public class AptGroupServiceImpl extends LandInfoService implements AptGroupService {

    @Autowired
    private JpaAptGroupDAO JpaAptGroupDAO;
    @Autowired
    private AptGroupDAO aptGroupDAO;

    public Map<String, Object> getAptGroupList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<AptGroupBean> list = JpaAptGroupDAO.findAll(pageable);
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
     * 분양권 목록 조회
     */
    public Map<String, Object> selectAptGroupList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<AptGroupBean> list = aptGroupDAO.selectAptGroupList(Limit);
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
     * 분양권 등록
     * 
     * @param aptGroupBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regAptGroup(AptGroupBean aptGroupBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;
        try {
            String apt_code = getAptCode("1", aptGroupBean.getUnit_seq(), aptGroupBean.getTrade_cd()); // 매물 코드 세팅
            aptGroupBean.setAptCode(apt_code); // 매물 코드 빈에 세팅
            aptGroupBean.setCrt_id(getUserId()); // 등록자 아이디 세팅
            if (aptGroupDAO.regAptGroup(aptGroupBean) < 1) {
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
