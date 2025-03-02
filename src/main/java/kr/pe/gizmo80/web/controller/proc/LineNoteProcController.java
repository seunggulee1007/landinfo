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
import kr.pe.gizmo80.web.bean.LineNoteBean;
import kr.pe.gizmo80.web.service.lineNoteService.LineNoteService;

/**
 * 라인노트 관련 컨트롤러
 * 
 * @author bomi
 *
 */
@RestController
@Api(value = "LineNoteController", description = "라인노트 관련 API", basePath = "/getAptAreaList")
public class LineNoteProcController {

    @Autowired
    LineNoteService lineNoteService;

    @RequestMapping("/getLineNoteList")
    @ApiOperation(value = "평형 목록 조회", notes = "평형 목록을 조회하는 API.")
    public Map<String, Object> getAptAreaList(
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = lineNoteService.getLineNoteList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }

    @RequestMapping("/regLineNote")
    @ApiOperation(value = "라인노트 등록", notes = "라인노트 등록하는 API")
    public Map<String, Object> regLineNote(LineNoteBean lineNoteBean) throws Exception {

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = lineNoteService.regLineNote(lineNoteBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;

    }

    @RequestMapping("/selectLineNoteList")
    @ApiOperation(value = "라인노트 조회", notes = "라인노트 리스트 조회하는API")
    public Map<String, Object> selectLineNoteList(int Limit) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = lineNoteService.selectLineNoteList(Limit);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }
    
    @RequestMapping("/getLineNote")
    @ApiOperation(value="라인노트 개별 조회",notes = "라인노트 개별 건 조회하는 API")
    public Map<String, Object> getLineNote(int seqNo) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = lineNoteService.getLineNote(seqNo);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
    
    @RequestMapping("/modifyLineNote")
    @ApiOperation(value="라인노트 수정", notes = "라인노트 수정하는 API")
    public Map<String, Object> modifyLineNote(LineNoteBean lineNoteBean) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = lineNoteService.modifyLineNote(lineNoteBean);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
}
