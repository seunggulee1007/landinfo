package kr.pe.gizmo80.web.controller.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OtherViewConroller {

    /**
     * 주택 등록 화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/regHouse")
    public String regHouse(Model model, HttpServletRequest request) throws Exception {
        return "other/regHouse";
    }

    /**
     * 토지 등록 화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/regLand")
    public String regLand(Model model, HttpServletRequest request) throws Exception {
        return "other/regLand";
    }

    /**
     * 건물 등록 화면
     * 
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/regBuilding")
    public String regBuilding(Model model, HttpServletRequest request) throws Exception {
        return "other/regBuilding";
    }

    /**
     * 주택 리스트
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/houseList")
    public String houseList(Model model) throws Exception {
        return "other/houseList";
    }

    /**
     * 토지 리스트
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/landList")
    public String landList(Model model) throws Exception {
        return "other/landList";
    }

    /**
     * 건물 리스트
     * 
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/other/buildingList")
    public String buildingList(Model model, HttpServletRequest request) throws Exception {
        return "other/buildingList";
    }
}
