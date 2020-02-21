package kr.pe.gizmo80.web.service.aptGroupService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.AptGroupBean;

public interface AptGroupService {

    public Map<String, Object> getAptGroupList(Pageable pageable) throws Exception;

    /**
     * 분양권 등록
     * 
     * @param aptGroupBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regAptGroup(AptGroupBean aptGroupBean) throws Exception;

    /** 분양권 목록 조회 */
    public Map<String, Object> selectAptGroupList(int Limit) throws Exception;
}
