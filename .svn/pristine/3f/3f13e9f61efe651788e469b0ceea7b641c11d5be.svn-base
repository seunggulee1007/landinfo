package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.pe.gizmo80.web.bean.FileUpBean;

@Mapper
public interface CommonDAO {

    /** 이미지 일련번호 조회 */
    @Select("select fn_nextval('seq_image')")
    public int getSequence() throws Exception;

    /** 이미지 업로드 저장 */
    public int insertFile(FileUpBean fileUpBean) throws Exception;

    /** 매물번호 조회 */
    public String selectAptCode(Map<String, Object> map) throws Exception;
}
