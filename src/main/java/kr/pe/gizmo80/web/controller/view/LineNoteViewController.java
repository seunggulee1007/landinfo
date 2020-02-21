package kr.pe.gizmo80.web.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pe.gizmo80.web.dao.mybatisDao.LineNoteDAO;

/**
 * 해당 뷰 만을 리턴해 주는 클래스
 * 
 * @author n2SOFT-V510
 *
 */
@Controller
public class LineNoteViewController {
    @Autowired
    LineNoteDAO lineNoteDAO;
    /**
     * 라인노트 등록
     * 
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/lineNote/regLineNote")
    public String regLineNote() throws Exception {
        return "lineNote/regLineNote";
    }

    /**
     * 라인노트 리스트
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("/lineNote/lineNoteList")
    public String lineNoteList() throws Exception {
        return "lineNote/lineNoteList";
    }

    @RequestMapping("/lineNote/lineNote")
    public String lineNote(Model model,int seqNo) throws Exception{
        
        model.addAttribute("seqNo",seqNo);
        
        return "lineNote/lineNote";
    }
}