package kr.pe.gizmo80.web.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.pe.gizmo80.web.bean.AptBasicBean;
import kr.pe.gizmo80.web.bean.AptGroupBean;

@Mapper
public interface TestDAO {

    @Select("select * from tbl_apt_basic")
    public List<AptBasicBean> getTblApt();

    @Select("select * from tbl_apt_group")
    public List<AptGroupBean> getAptGroup();

    public List<AptGroupBean> selectAptGroup() throws Exception;
    
    @Select("select * from tbl_apt_group")
    public List<Map<String, Object>> selectInquery() throws Exception;
    
    public List<Map<String, Object>> selectTest() throws Exception;
    
}
