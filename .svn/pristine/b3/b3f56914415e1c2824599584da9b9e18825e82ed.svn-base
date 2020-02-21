package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.pe.gizmo80.web.bean.AptAreaBean;

@Mapper
public interface AptAreaDAO {
    /** 평형 등록 */
    public int regAptArea(AptAreaBean aptAreaBean) throws Exception;

    /** 평형 콤보 */
    public List<AptAreaBean> getAptAreaCombo(int seq_no) throws Exception;

    /** 단지별 평형 리스트 */
    public List<AptAreaBean> selectAptAreaList(int limit) throws Exception;
    
    /** 단지명 삭제 */
    @Delete("delete from tbl_apt_area where seq_no = #{seq_no}")
    public int deleteAptArea(@Param("seq_no") int seq_no);

    public int modifyAptArea(AptAreaBean aptAreaBean)throws Exception;
    
}
