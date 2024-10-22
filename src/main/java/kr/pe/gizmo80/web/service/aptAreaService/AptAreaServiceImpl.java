package kr.pe.gizmo80.web.service.aptAreaService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.AptAreaBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaAptAreaDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.AptAreaDAO;

@Service
public class AptAreaServiceImpl extends LandInfoService implements AptAreaService {

    @Autowired
    private JpaAptAreaDAO JpaAptAreaDAO; // jpa 관련
    @Autowired
    private AptAreaDAO aptAreaDAO; // mybatis 관련

    public Map<String, Object> getAptAreaList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        try {

            Page<AptAreaBean> list = JpaAptAreaDAO.findAll(pageable);

            map.put("list", list);

        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }

        map.put("result", result);
        map.put("resultMsg", resultMsg);

        return map;
    }

    /**
     * 평형 등록
     */
    public Map<String, Object> regAptArea(AptAreaBean aptAreaBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "등록이 완료되었습니다.";
        try {
            aptAreaBean.setCrt_id(getUserId());
            if (aptAreaDAO.regAptArea(aptAreaBean) < 1) {
                result = Constants.FAIL;
                resultMsg = "등록에 실패하였습니다.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }
        map.put("result", result);
        map.put("resultMsg", resultMsg);
        return map;
    }

    /**
     * 평형 콤보
     * 
     * @return
     * @throws Exception
     */
    public Map<String, Object> getAptAreaCombo(int seq_no) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<AptAreaBean> list = aptAreaDAO.getAptAreaCombo(seq_no);
            map.put("list", list);
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }
        map.put("result", result);
        map.put("resultMsg", resultMsg);
        return map;
    }

    /**
     * 평형 단지별 리스트
     * 
     * @param seq_no
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectAptAreaList(int limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        try {
            List<AptAreaBean>list = aptAreaDAO.selectAptAreaList(limit);
            map.put("list", list);
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }
        map.put("result", result);
        map.put("resultMsg", resultMsg);
        return map;
    }
    
    /**
     * 평형 삭제
     * @param seq_no
     * @return
     * @throws Exception
     */
    public Map<String, Object>deleteAptArea(int seq_no) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "삭제하였습니다.";
        try {
            if(aptAreaDAO.deleteAptArea(seq_no) < 1) {
                result = Constants.FAIL;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }
        map.put("result", result);
        map.put("resultMsg", resultMsg);
        return map;
    }
    
    /**
     * 단지별 평형 변경
     * @param aptAreaBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> modifyAptArea(AptAreaBean aptAreaBean) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "평형 수정완료 하였습니다.";
        try {
            aptAreaBean.setCrt_id(getUserId());
            if(aptAreaDAO.modifyAptArea(aptAreaBean) < 1) {
                result = Constants.FAIL;
                resultMsg = "업데이트에 실패하였습니다.";
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        map.put("result"    , result);
        map.put("resultMsg" , resultMsg);
        
        return map;
    }
    
}
