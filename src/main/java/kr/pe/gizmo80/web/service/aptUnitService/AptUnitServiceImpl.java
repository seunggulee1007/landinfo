package kr.pe.gizmo80.web.service.aptUnitService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.AptUnitBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaAptUnitDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.AptUnitDAO;

@Service
public class AptUnitServiceImpl extends LandInfoService implements AptUnitService {

    @Autowired
    JpaAptUnitDAO jpaAptUnitDAO;
    @Autowired
    AptUnitDAO aptUnitDAO;

    /**
     * 단지명 리스트
     */
    public Map<String, Object> getAptUnitList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<AptUnitBean> list = jpaAptUnitDAO.findAll(pageable);
            map.put("list", list);
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = "시스템오류 !!!" + e.getMessage();
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /**
     * 단지명 저장
     */
    public Map<String, Object> regAptUnit(AptUnitBean aptUnitBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "단지명을 등록하였습니다.";
        try {

            String userId = getUserId();

            aptUnitBean.setCrt_id(userId);

            if (aptUnitDAO.insertAptUnit(aptUnitBean) < 1) {
                result = Constants.FAIL;
                resultMsg = "저장에 실패하였습니다.";
            }

        } catch (Exception e) {
            e.printStackTrace();
            
            result = Constants.FAIL;
            resultMsg = "시스템오류 !!!" + e.getMessage();
            
            if(e.getMessage().indexOf("Duplicate") != -1) {
                resultMsg = "중복된 단지명이 있습니다. 확인후 다시 등록해 주세요";
            }
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /** 단지 콤보용 조회 */
    public Map<String, Object> getAptUnitCombo() throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        try {

            List<AptUnitBean> list = aptUnitDAO.selectUnitName();
            map.put("list", list);
            System.err.println("list ::: " + list.toString());
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = "시스템 오류 !!" + e.getMessage();

        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /** 단지명 삭제 */
    public Map<String, Object> deleteAptUnit(int seqNo) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "삭제하였습니다";

        try {

            if (aptUnitDAO.deleteAptUnit(seqNo) < 1) {
                result = Constants.FAIL;
            }

        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = "시스템 오류 !!" + e.getMessage();

        }

        map.put("result"        , result);
        map.put("resultMsg"     , resultMsg);

        return map;
    }
    
    public Map<String, Object> modifyAptUnit(AptUnitBean aptUnitBean) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "단지명 수정을 완료하였습니다.";
        
        try {
            aptUnitBean.setCrt_id(getUserId());
            aptUnitDAO.modifyAptUnit(aptUnitBean);
            
        }catch (Exception e) {
            result = Constants.FAIL;
            resultMsg = "시스템 오류 !! " + e.getMessage();
            e.printStackTrace();
        }
        map.put("result"    ,  result);
        map.put("resultMsg", resultMsg);
        return map;
    }
}
