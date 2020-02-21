package kr.pe.gizmo80.web.service.storeService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.StoreBean;

public interface StoreService {

    public Map<String, Object> getStoreList(Pageable pageable) throws Exception;

    /**
     * 상가 등록
     * 
     * @param aptBasicBean
     * @return
     * @throws Exception
     */
    public Map<String, Object> regStore(StoreBean storeBean) throws Exception;

    /**
     * 상가 목록 조회
     * 
     * @param Limit
     *            (페이징 변수)
     * @return
     * @throws Exception
     */

    public Map<String, Object> selectStoreList(int Limit) throws Exception;

}
