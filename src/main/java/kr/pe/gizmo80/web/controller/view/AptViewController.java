package kr.pe.gizmo80.web.controller.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pe.gizmo80.web.dao.mybatisDao.AptAreaDAO;

/**
 * 해당 뷰 만을 리턴해 주는 클래스
 * 
 * @author n2SOFT-V510
 *
 */
@Controller
public class AptViewController {

    @Autowired
    AptAreaDAO aptAreaDAO;

    /**
     * 아파트 단지명 등록
     * 
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/regAptUnit")
    public String regAptUnit(Model model, HttpServletRequest request) throws Exception {
        return "apt/regAptUnit";
    }

    /**
     * 입주권 등록 화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/regAptMember")
    public String regAptMember(Model model, HttpServletRequest request) throws Exception {
        return "apt/regAptMember";
    }

    /**
     * 아파트 등록화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/regAptBasic")
    public String regApt(Model model, HttpServletRequest request) throws Exception {
        return "apt/regAptBasic";
    }

    /**
     * 아파트 분양권 등록화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/regAptGroup")
    public String regAptGroup(Model model, HttpServletRequest request) throws Exception {
        return "apt/regAptGroup";
    }

    /**
     * 아파트 평형 등록화면
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/regAptArea")
    public String regAptArea(Model model, HttpServletRequest request) throws Exception {
        return "apt/regAptArea";
    }

    /**
     * 아파트 리스트
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/aptBasicList")
    public String aptList(Model model) throws Exception {
        return "apt/aptBasicList";
    }

    /**
     * 분양권 리스트
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/aptGroupList")
    public String aptGroupList(Model model) throws Exception {
        return "apt/aptGroupList";
    }

    /**
     * 입주권 리스트
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/apt/aptMemberList")
    public String aptMemberList() throws Exception {
        return "apt/aptMemberList";
    }
}