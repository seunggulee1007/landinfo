package kr.pe.gizmo80.web.dao.jpaDao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;

import kr.pe.gizmo80.web.bean.AptAreaBean;

@Mapper
public interface JpaAptAreaDAO extends JpaRepository<AptAreaBean, Integer> {

}
