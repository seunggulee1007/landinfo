package kr.pe.gizmo80.web.controller.proc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.pe.gizmo80.web.bean.AptBasicBean;
import kr.pe.gizmo80.web.bean.AptGroupBean;
import kr.pe.gizmo80.web.dao.TestDAO;

@RestController
public class ProcessController {

    @Autowired
    private TestDAO testDAO;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/test/result")
    public Map<String, Object> retResult(String tabs, HttpServletRequest request) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        List<AptBasicBean> listMap = new ArrayList<AptBasicBean>();
        List<AptGroupBean> aptGroupMap = new ArrayList<AptGroupBean>();
        logger.debug("tabs ::: " + tabs);
        if ("1".equals(tabs) || StringUtils.isEmpty(tabs)) {
            listMap = testDAO.getTblApt();
            map.put("data", listMap);
        } else if ("2".equals(tabs)) {
            aptGroupMap = testDAO.selectAptGroup();
            map.put("data", aptGroupMap);
        }
        return map;
    }

}
