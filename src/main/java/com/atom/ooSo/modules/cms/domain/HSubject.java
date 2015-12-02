package com.atom.ooSo.modules.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.atom.ooSo.common.domain.IdEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "H_SUBJECT")
public class HSubject extends IdEntity {

	@Getter
	@Setter
	@Column(name = "FATHER_ID")
	private String fatherId;

	@Getter
	@Setter
	@Column(name = "NAME")
	private String name;

}
