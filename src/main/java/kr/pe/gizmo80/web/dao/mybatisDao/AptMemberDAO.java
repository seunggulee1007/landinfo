package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.pe.gizmo80.web.bean.AptMemberBean;

@Mapper
public interface AptMemberDAO {

    public List<AptMemberBean> selectAptMemberList(int limit)throws Exception;
    
    public int regAptMember(AptMemberBean aptMemberBean) throws Exception;
    
}
