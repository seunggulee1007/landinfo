package kr.pe.gizmo80.web.dao.jpaDao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;

import kr.pe.gizmo80.web.bean.StoreBean;

@Mapper
public interface JpaStoreDAO extends JpaRepository<StoreBean, Integer> {

}
