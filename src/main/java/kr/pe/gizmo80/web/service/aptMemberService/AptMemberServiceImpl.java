package kr.pe.gizmo80.web.service.aptMemberService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.AptMemberBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaAptMemberDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.AptMemberDAO;

@Service
public class AptMemberServiceImpl extends LandInfoService implements AptMemberService {

    @Autowired
    JpaAptMemberDAO jpaAptMemberDAO;
    @Autowired
    private AptMemberDAO aptMemberDAO;
    
    public Map<String, Object> getAptMemberList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        try {
            Page<AptMemberBean> list = jpaAptMemberDAO.findAll(pageable);
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
    
    /** 입주권(조합매물) 리스트 조회*/
    public Map<String, Object>selectAptMemberList(int limit)throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        try {
            List<AptMemberBean> list = aptMemberDAO.selectAptMemberList(limit);
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
    
    /** 입주권(조합매물) 등록 */
    public Map<String, Object>regAptMember(AptMemberBean aptMemberBean)throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";
        
        try {
            String apt_code = getAptCode("1", aptMemberBean.getUnit_seq(), aptMemberBean.getTrade_cd()); // 매물 코드 세팅
            aptMemberBean.setApt_code(apt_code);
            aptMemberBean.setCrt_id(getUserId());
            aptMemberDAO.regAptMember(aptMemberBean);
        }catch(Exception e) {
            e.printStackTrace();
            result = Constants.FAIL;
            resultMsg = Constants.sys_err + e.getMessage();
                    
        }
        
        map.put("result", result);
        map.put("resultMsg", resultMsg);
        
        return map;
    }
}
