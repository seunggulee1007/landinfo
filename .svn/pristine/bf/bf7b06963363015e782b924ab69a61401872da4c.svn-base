package kr.pe.gizmo80.web.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 상담 뷰 컨트롤러
 * 
 * @author bomi
 *
 */
@Controller
public class CounselViewController {

    /**
     * 메인 상담 리스트
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/counsel/main_counsel_list")
    public String MainCounselList() throws Exception {
        return "counsel/main_counsel_list";
    }
    
    /**
     * 메인 상담 진행정보
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/counsel/mainCounselDetail")
    public String MainCounselDetail() throws Exception {
        return "popup/counsel/mainCounselDetail";
    }

    @RequestMapping("/counsel/counsel")
    public String counsel() throws Exception {
        return "counsel/counsel";
    }

}
