package com.atom.ooSo.modules.cms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

import com.atom.ooSo.modules.cms.domain.HSubject;

public interface HSubjectRepository extends Repository<HSubject, Long> {

	@Modifying
	@Query("select sub from HSubject sub")
	List<HSubject> findRoots();
}
