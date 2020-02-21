package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.OtherBean;
import kr.pe.gizmo80.web.service.landService.LandService;

@RestController
public class LandProcController {

    @Autowired
    LandService landService;

    @RequestMapping("/getLandList")
    public Map<String, Object> getLandList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("pageable" + pageable);
        try {
            map = landService.getLandList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 토지 리스트 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    @RequestMapping("/selectLandList")
    public Map<String, Object> selectLandList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = landService.selectLandList(Limit);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 토지 등록
     * 
     * @param otherBean
     * @return
     * @throws Exception
     */
    @RequestMapping("/regLand")
    public Map<String, Object> regLand(OtherBean otherBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = landService.regLand(otherBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
