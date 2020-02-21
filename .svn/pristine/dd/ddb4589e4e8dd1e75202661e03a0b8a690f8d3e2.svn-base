package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.StoreBean;
import kr.pe.gizmo80.web.service.storeService.StoreService;

@RestController
public class StoreProcController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/getStoreList")
    public Map<String, Object> getStoreList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("pageable" + pageable);
        try {
            map = storeService.getStoreList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 아파트 리스트 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    @RequestMapping("/selectStoreList")
    public Map<String, Object> selectStoreList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = storeService.selectStoreList(Limit);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 아파트 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    @RequestMapping("/regStore")
    public Map<String, Object> regStore(StoreBean storeBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = storeService.regStore(storeBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
