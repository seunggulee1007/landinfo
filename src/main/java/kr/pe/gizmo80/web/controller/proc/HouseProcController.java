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
import kr.pe.gizmo80.web.service.houseService.HouseService;

@RestController
public class HouseProcController {

    @Autowired
    HouseService houseService;

    @RequestMapping("/getHouseList")
    public Map<String, Object> getHouseList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("pageable" + pageable);
        try {
            map = houseService.getHouseList(pageable);
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
    @RequestMapping("/selectHouseList")
    public Map<String, Object> selectHouseList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = houseService.selectHouseList(Limit);
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
    @RequestMapping("/regHouse")
    public Map<String, Object> regHouse(OtherBean otherBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = houseService.regHouse(otherBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
