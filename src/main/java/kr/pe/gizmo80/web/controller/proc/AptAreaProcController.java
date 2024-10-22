package kr.pe.gizmo80.web.controller.proc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import kr.pe.gizmo80.web.bean.AptAreaBean;
import kr.pe.gizmo80.web.service.aptAreaService.AptAreaService;

/**
 * 평형 구분 관련 컨트롤러
 * 
 * @author bomi
 *
 */
@RestController
@Api(value = "AptAreaController", description = "평형 구분 관련 API", basePath = "/getAptAreaList")
public class AptAreaProcController {

    @Autowired
    AptAreaService aptAreaService;

    @RequestMapping("/getAptAreaList")
    @ApiOperation(value = "평형 목록 조회", notes = "평형 목록을 조회하는 API.")
    public Map<String, Object> getAptAreaList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = aptAreaService.getAptAreaList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }
    
    @RequestMapping("/selectAptAreaList")
    @ApiOperation(value="평형 목록 조회", notes = "평형 목록 조회하는 API")
    public Map<String, Object> selectAptAreaList(int limit) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = aptAreaService.selectAptAreaList(limit);
        }catch(Exception e) {
            e.printStackTrace();
        }
        return map;
    }
    
    @RequestMapping("/regAptArea")
    @ApiOperation(value = "평형 등록", notes = "단지별 평형 등록하는 API")
    public Map<String, Object> regAptArea(AptAreaBean aptAreaBean) throws Exception {

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = aptAreaService.regAptArea(aptAreaBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;

    }

    @RequestMapping("/getAptAreaCombo")
    @ApiOperation(value = "평형 콤보 조회", notes = "평형 콤보 조회하는 API")
    public Map<String, Object> getAptArea(int seq_no) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = aptAreaService.getAptAreaCombo(seq_no);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    @RequestMapping("/deleteAptArea")
    @ApiOperation(value="단지별 평형 삭제", notes = "단지별 평형 삭제하는 API")
    public Map<String, Object>deleteAptArea(int seq_no) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = aptAreaService.deleteAptArea(seq_no);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
    
    @RequestMapping("/modifyAptArea")
    @ApiOperation(value="단지별 평형 수정", notes="단지별 평형 수정하는 API")
    public Map<String, Object> modifyAptArea(AptAreaBean aptAreaBean) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = aptAreaService.modifyAptArea(aptAreaBean);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return map;
        
    }
}
