package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.pe.gizmo80.web.bean.StoreBean;

@Mapper
public interface StoreDAO {

    /**
     * 아파트 등록
     * 
     * @param OtherBean
     * @return
     * @throws Exception
     */
    public int regStore(StoreBean storeBean) throws Exception;

    /**
     * 아파트 목록 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public List<StoreBean> selectStoreList(int Limit) throws Exception;

}
