package kr.pe.gizmo80.web.service.storeService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kr.pe.gizmo80.com.config.Constants;
import kr.pe.gizmo80.com.service.LandInfoService;
import kr.pe.gizmo80.web.bean.StoreBean;
import kr.pe.gizmo80.web.dao.jpaDao.JpaStoreDAO;
import kr.pe.gizmo80.web.dao.mybatisDao.StoreDAO;

@Service
public class StoreServiceImpl extends LandInfoService implements StoreService {

    @Autowired
    private JpaStoreDAO JpaStoreDAO;
    @Autowired
    private StoreDAO StoreDAO;

    public Map<String, Object> getStoreList(Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            Page<StoreBean> list = JpaStoreDAO.findAll(pageable);
            // Stream<StoreBean> stream = JpaStoreDAO.findAll().stream();

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
    public Map<String, Object> selectStoreList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        String result = Constants.OK;
        String resultMsg = "";

        try {
            List<StoreBean> list = StoreDAO.selectStoreList(Limit);
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
     * @param StoreBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regStore(StoreBean storeBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        String result = Constants.OK;
        String resultMsg = Constants.reg_ok;

        try {

            String apt_code = getAptCode("2", 00, storeBean.getTrade_cd()); // 매물 코드 세팅
            storeBean.setStore_code(apt_code); // 매물 코드 빈에 세팅
            storeBean.setCrt_id(getUserId()); // 등록자 아이디 세팅
            if (StoreDAO.regStore(storeBean) < 1) {
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
