package kr.pe.gizmo80.web.service.landService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.OtherBean;

public interface LandService {

    public Map<String, Object> getLandList(Pageable pageable) throws Exception;

    /**
     * 토지 등록
     * 
     * @param otherBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regLand(OtherBean otherBean) throws Exception;

    /**
     * 토지 목록 조회
     * 
     * @param Limit
     *            (페이징 변수)
     * @return
     * @throws Exception
     */

    public Map<String, Object> selectLandList(int Limit) throws Exception;

}
