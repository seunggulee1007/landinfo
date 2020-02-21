package kr.pe.gizmo80.web.controller.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreViewController {

    /**
     * 상가 등록화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/store/regStore")
    public String regStore(Model model, HttpServletRequest request) throws Exception {
        return "store/regStore";
    }

    /**
     * 상가 리스트
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/store/storeList")
    public String storeList(Model model) throws Exception {
        return "store/storeList";
    }
}
