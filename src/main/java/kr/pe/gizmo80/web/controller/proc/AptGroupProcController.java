package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.AptGroupBean;
import kr.pe.gizmo80.web.service.aptGroupService.AptGroupService;

@RestController
public class AptGroupProcController {

    @Autowired
    AptGroupService aptGroupService;

    @RequestMapping("/getAptGroupList")
    public Map<String, Object> getAptGroupList(
            @PageableDefault(sort = { "aptCode" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = aptGroupService.getAptGroupList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 분양권 리스트 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    @RequestMapping("/selectAptGroupList")
    public Map<String, Object> selectAptGroupList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = aptGroupService.selectAptGroupList(Limit);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    /**
     * 분양권 등록
     * 
     * @param aptGroupBean
     * @return
     * @throws Exception
     */
    @RequestMapping("/regAptGroup")
    public Map<String, Object> regAptGroup(AptGroupBean aptGroupBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("aptGroupBean ::: " + aptGroupBean.toString());
        try {
            map = aptGroupService.regAptGroup(aptGroupBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

}
