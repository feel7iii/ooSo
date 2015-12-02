package com.atom.ooSo.common.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atom.ooSo.common.domain.Cperson;

@Service
public class CPersonService {

	@Autowired
	private CPersonRepository cpersonRepository;

	public Cperson login(String email, String loginPassword) {
		return cpersonRepository.findByEmailAndLoginPassword(email, loginPassword);
	}

	public Cperson findUserByLoginName(String loginName) {
		return cpersonRepository.findByLoginName(loginName);
	}

}