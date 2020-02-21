package kr.pe.gizmo80.web.service.aptAreaService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.AptAreaBean;

public interface AptAreaService {

    /**
     * 평형 리스트
     * 
     * @param pageable
     * @return
     * @throws Exception
     */
    public Map<String, Object> getAptAreaList(Pageable pageable) throws Exception;

    /**
     * 평형 등록
     * 
     * @param aptAreaBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regAptArea(AptAreaBean aptAreaBean) throws Exception;

    /**
     * 평형 콤보
     * 
     * @return
     * @throws Exception
     */
    public Map<String, Object> getAptAreaCombo(int seq_no) throws Exception;

    /**
     * 평형 단지별 리스트
     * 
     * @param seq_no
     * @return
     * @throws Exception
     */
    public Map<String, Object> selectAptAreaList(int limit) throws Exception;
    
    /**
     * 평형 삭제
     * @param seq_no
     * @return
     * @throws Exception
     */
    public Map<String, Object>deleteAptArea(int seq_no) throws Exception;
    
    /**
     * 단지별 평형 수정
     * @param aptAreaBean
     * @return
     * @throws Exception
     */
    public Map<String, Object>modifyAptArea(AptAreaBean aptAreaBean) throws Exception;
}
