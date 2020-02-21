package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.pe.gizmo80.web.bean.AptUnitBean;

@Mapper
public interface AptUnitDAO {

    /** 저장 */
    public int insertAptUnit(AptUnitBean aptUnitBean) throws Exception;

    @Select("select unit_name, seq_no as seqNo from tbl_apt_unit")
    public List<AptUnitBean> selectUnitName() throws Exception;

    /** 단지명 삭제 */
    @Delete("delete from tbl_apt_unit where seq_no = #{seqNo}")
    public int deleteAptUnit(@Param("seqNo") int seqNo);

    /** 단지명 수정 */
    public int modifyAptUnit(AptUnitBean aptUnitBean) throws Exception;
}
