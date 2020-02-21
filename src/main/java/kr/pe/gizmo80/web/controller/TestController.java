package kr.pe.gizmo80.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pe.gizmo80.web.dao.TestDAO;

@Controller
public class TestController {

    @Autowired
    private TestDAO testDAO;
    
    @RequestMapping("/aioxfile")
    public String aioxfile() throws Exception {
        return "test/aioxfile";
    }

    @RequestMapping("/testpage")
    public String testpage(Model model,
            @PageableDefault(sort = { "seqNo" }, direction = Direction.DESC, size = 5) Pageable pageable)
            throws Exception {

        return "test/testpage";
    }

    @RequestMapping("/testtt")
    public Map<String, Object> testtt() throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Map<String, Object>> mmm = testDAO.selectTest();
        
        for(int i=0; i<mmm.size(); i++) {
            System.out.println(mmm.get(i).getOrDefault("progress_cd", ""));
        }
        return map;
        
    }
}
