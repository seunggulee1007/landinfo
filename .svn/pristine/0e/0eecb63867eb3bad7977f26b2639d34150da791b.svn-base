package kr.pe.gizmo80.web.service.houseService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.OtherBean;

public interface HouseService {

    public Map<String, Object> getHouseList(Pageable pageable) throws Exception;

    /**
     * 빌딩 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regHouse(OtherBean otherBean) throws Exception;

    /**
     * 빌딩 목록 조회
     * 
     * @param Limit
     *            (페이징 변수)
     * @return
     * @throws Exception
     */

    public Map<String, Object> selectHouseList(int Limit) throws Exception;

}
