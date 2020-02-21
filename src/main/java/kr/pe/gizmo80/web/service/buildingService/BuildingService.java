package kr.pe.gizmo80.web.service.buildingService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.OtherBean;

public interface BuildingService {

    public Map<String, Object> getBuildingList(Pageable pageable) throws Exception;

    /**
     * 빌딩 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regBuilding(OtherBean otherBean) throws Exception;

    /**
     * 빌딩 목록 조회
     * 
     * @param Limit
     *            (페이징 변수)
     * @return
     * @throws Exception
     */

    public Map<String, Object> selectBuildingList(int Limit) throws Exception;

}
