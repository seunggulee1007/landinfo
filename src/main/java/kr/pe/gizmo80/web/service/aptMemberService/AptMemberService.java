package kr.pe.gizmo80.web.service.aptMemberService;

import java.util.Map;

import org.springframework.data.domain.Pageable;

import kr.pe.gizmo80.web.bean.AptMemberBean;

public interface AptMemberService {
    public Map<String, Object> getAptMemberList(Pageable pageable) throws Exception;
    
    /** 입주권(조합매물) 리스트 조회*/
    public Map<String, Object>selectAptMemberList(int limit)throws Exception;
    
    /** 입주권(조합매물) 등록 */
    public Map<String, Object>regAptMember(AptMemberBean aptMemberBean)throws Exception;
    
}
