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
import kr.pe.gizmo80.web.bean.AptMemberBean;
import kr.pe.gizmo80.web.service.aptMemberService.AptMemberService;

/**
 *  입주권(조합매물) 컨트롤러
 * 
 * @author bomi
 *
 */
@RestController
@Api(value="AptMemberProcController", description = "입주권(조합매물) 관련 API", basePath="/selectAptMemberList")
public class AptMemberProcController {

    @Autowired
    AptMemberService aptMemberService;

    @RequestMapping("/getAptMemberList")
    public Map<String, Object> getAptMemberList( @PageableDefault(sort = { "apt_code" }, direction = Direction.DESC, size = 5) Pageable pageable) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try {
            map = aptMemberService.getAptMemberList(pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }
    
    @RequestMapping("/selectAptMemberList")
    @ApiOperation(value="입주권(조합매물) 조회" , notes = "입주권(조합매물)조회하는 API.")
    public Map<String, Object> selectAptMemberList(int Limit)throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
            
        try {
            map = aptMemberService.selectAptMemberList(Limit);
        }catch(Exception e) {
            e.printStackTrace();
        }
        return map;
    }
    /** 입주권(조합매물) 등록 */
    @RequestMapping("/regAptMember")
    @ApiOperation(value="입주권(조합매물) 등록", notes = "입주권(조합매물) 등록하는 API")
    public Map<String, Object>regAptMember(AptMemberBean aptMemberBean)throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = aptMemberService.regAptMember(aptMemberBean);
        }catch(Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
