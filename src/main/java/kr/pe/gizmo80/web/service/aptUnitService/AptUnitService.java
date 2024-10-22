package kr.pe.gizmo80.web.service.aptUnitService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.AptUnitBean;

public interface AptUnitService {

    /** 단지 리스트 */
    public Map<String, Object> getAptUnitList(Pageable pageable) throws Exception;

    /** 단지 등록 */
    public Map<String, Object> regAptUnit(AptUnitBean aptUnitBean) throws Exception;

    /** 단지 콤보용 조회 */
    public Map<String, Object> getAptUnitCombo() throws Exception;

    /** 단지명 삭제 */
    public Map<String, Object> deleteAptUnit(int seqNo) throws Exception;

    /** 단지명 수정 */
    public Map<String, Object> modifyAptUnit(AptUnitBean aptUnitBean) throws Exception;
}
