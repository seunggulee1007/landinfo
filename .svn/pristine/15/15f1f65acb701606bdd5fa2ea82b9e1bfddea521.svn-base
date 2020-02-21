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
import kr.pe.gizmo80.web.service.buildingService.BuildingService;

@RestController
public class BuildingProcController {

    @Autowired
    BuildingService buildingService;

    @RequestMapping("/getBuildingList")
    public Map<String, Object> getBuildingList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("pageable" + pageable);
        try {
            map = buildingService.getBuildingList(pageable);
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
    @RequestMapping("/selectBuildingList")
    public Map<String, Object> selectBuildingList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = buildingService.selectBuildingList(Limit);
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
    @RequestMapping("/regBuilding")
    public Map<String, Object> regBuilding(OtherBean otherBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = buildingService.regBuilding(otherBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
