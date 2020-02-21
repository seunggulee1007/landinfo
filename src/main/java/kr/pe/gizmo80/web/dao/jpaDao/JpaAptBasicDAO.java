package kr.pe.gizmo80.web.dao.jpaDao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;

import kr.pe.gizmo80.web.bean.AptBasicBean;

@Mapper
public interface JpaAptBasicDAO extends JpaRepository<AptBasicBean, Integer> {

}
