package kr.pe.gizmo80.web.service.lineNoteService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.LineNoteBean;

public interface LineNoteService {

    public Map<String, Object> getLineNoteList(Pageable pageable) throws Exception;

    /**
     * 라인노트 목록 조회
     * 
     * @param Limit
     *            (페이징 변수)
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectLineNoteList(int Limit) throws Exception;
    
    /**
     * 라인노트 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regLineNote(LineNoteBean lineNoteBean) throws Exception;

    /**
     * 라인노트 개별건 조회
     * @param seqNo
     * @return
     * @throws Exception
     */
    public Map<String, Object> getLineNote(int seqNo) throws Exception;
    
    /**
     * 라인노트 수정
     * @param lineNoteBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> modifyLineNote(LineNoteBean lineNoteBean) throws Exception;
    
}
