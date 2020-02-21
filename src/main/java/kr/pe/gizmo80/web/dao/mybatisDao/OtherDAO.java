package kr.pe.gizmo80.web.dao.mybatisDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.pe.gizmo80.web.bean.OtherBean;

@Mapper
public interface OtherDAO {

    /**
     * 건물 등록
     * 
     * @param OtherBean
     * @return
     * @throws Exception
     */
    public int regBuilding(OtherBean otherBean) throws Exception;

    /**
     * 건물 목록 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public List<OtherBean> selectBuildingList(int Limit) throws Exception;

    /**
     * 토지 등록
     * 
     * @param otherBean
     * @return
     * @throws Exception
     */
    public int regLand(OtherBean otherBean) throws Exception;

    /**
     * 토지 목록 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public List<OtherBean> selectLandList(int Limit) throws Exception;

    /**
     * 주택 등록
     * 
     * @param otherBean
     * @return
     * @throws Exception
     */
    public int regHouse(OtherBean otherBean) throws Exception;

    /**
     * 주택 목록 조회
     * 
     * @param Limit
     * @return
     * @throws Exception
     */
    public List<OtherBean> selectHouseList(int Limit) throws Exception;
}
