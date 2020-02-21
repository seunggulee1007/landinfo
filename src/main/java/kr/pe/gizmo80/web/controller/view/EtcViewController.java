package kr.pe.gizmo80.web.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pe.gizmo80.com.service.LandInfoService;

@Controller
public class EtcViewController extends LandInfoService {

    /**
     * 초기화면
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/index")
    public String index(Model model) throws Exception {
        String user_nm = getUserNm();
        model.addAttribute("user_nm", user_nm);
        return "/index";
    }

    /**
     * 로그인 페이지
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/login")
    public String login(Model model) throws Exception {
        return "login";
    }
}
