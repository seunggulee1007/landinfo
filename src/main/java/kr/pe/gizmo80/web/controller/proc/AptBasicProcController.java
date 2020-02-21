package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.AptBasicBean;
import kr.pe.gizmo80.web.service.aptBasicService.AptBasicService;

@RestController
public class AptBasicProcController {

    @Autowired
    AptBasicService aptBasicService;

    @RequestMapping("/getAptBasicList")
    public Map<String, Object> getAptBasicList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("pageable" + pageable);
        try {
            map = aptBasicService.getAptBasicList(pageable);
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
    @RequestMapping("/selectAptBasicList")
    public Map<String, Object> selectAptBasicList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        System.err.println("Limit :::" + Limit);
        try {
            map = aptBasicService.selectAptBasicList(Limit);
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
    @RequestMapping("/regAptBasic")
    public Map<String, Object> regAptBasic(AptBasicBean aptBasicBean) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = aptBasicService.regAptBasic(aptBasicBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
