package kr.pe.gizmo80.web.service.lineNoteService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.LineNoteBean;
import kr.pe.gizmo80.web.bean.StoreBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaStoreDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.LineNoteDAO;

@Service
public class LineNoteServiceImpl extends LandInfoService implements LineNoteService {

    @Autowired
    private JpaStoreDAO JpaStoreDAO;
    @Autowired
    private LineNoteDAO lineNoteDAO;

    public Map<String, Object> getLineNoteList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<StoreBean> list = JpaStoreDAO.findAll(pageable);
            Stream<StoreBean> stream = JpaStoreDAO.findAll().stream();

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
     * 라인노트 리스트
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectLineNoteList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<LineNoteBean> list = lineNoteDAO.selectLineNoteList(Limit);
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
     * 라인노트 등록
     * 
     * @param StoreBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regLineNote(LineNoteBean lineNoteBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;

        try {
            lineNoteBean.setCrt_id(getUserId());
            
            if (lineNoteDAO.regLineNote(lineNoteBean) < 1) {
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

    /**
     * 라인노트 개별건 조회
     * @param seqNo
     * @return
     * @throws Exception
     */
    public Map<String, Object> getLineNote(int seqNo) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();

        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;

        try {
            LineNoteBean lineNoteBean = lineNoteDAO.selectLineNote(seqNo);
            map.put("list", lineNoteBean);
        } catch (Exception e) {
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
            e.printStackTrace();
        }

        map.put("result"    , result);
        map.put("resultMsg" , resultMsg);

        return map;

    }
    
    public Map<String, Object> modifyLineNote(LineNoteBean lineNoteBean) throws Exception{
        Map<String, Object> map = new HashMap<String ,Object>();
        String result = Constants.OK;
        String resultMsg = "수정을 완료하였습니다.";
        
        try {
            lineNoteBean.setCrt_id(getUserId());
            lineNoteDAO.modifyLineNote(lineNoteBean);
        }catch (Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
        }
        
        map.put("result"    ,  result);
        map.put("resultMsg" , resultMsg);
        return map;
    }
    
}
