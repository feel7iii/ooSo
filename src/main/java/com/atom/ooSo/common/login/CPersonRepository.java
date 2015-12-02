package com.atom.ooSo.common.login;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.atom.ooSo.common.domain.Cperson;

public interface CPersonRepository extends JpaRepository<Cperson, Integer> {

	@Query("select cp from Cperson cp where cp.loginName=?1 and cp.loginPassword=?2")
	Cperson login(String loginName, String loginPassword);

	Cperson findByEmailAndLoginPassword(String email, String loginPassword);

	Cperson findByLoginName(String loginName);
}