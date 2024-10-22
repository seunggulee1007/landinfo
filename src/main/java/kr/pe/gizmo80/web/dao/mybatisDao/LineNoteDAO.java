package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.pe.gizmo80.web.bean.LineNoteBean;

@Mapper
public interface LineNoteDAO {
    /** 라인노트 등록 */
    public int regLineNote(LineNoteBean lineNoteBean) throws Exception;

    /** 라인노트 리스트 */
    public List<LineNoteBean> selectLineNoteList(int limit) throws Exception;

    /** 라인노트 단건 조회*/
    public LineNoteBean selectLineNote(int seqNo) throws Exception;
    
    /** 라인노트 수정*/
    public int modifyLineNote(LineNoteBean lineNoteBean) throws Exception;
    
}
