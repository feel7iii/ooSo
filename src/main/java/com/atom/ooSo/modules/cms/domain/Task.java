package com.atom.ooSo.modules.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.atom.ooSo.common.domain.Cperson;
import com.atom.ooSo.common.domain.IdEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "SS_TASK")
public class Task extends IdEntity {

	@Getter
	@Setter
	@Column(name = "TITLE")
	private String title;

	@Getter
	@Setter
	@Column(name = "DESCRIPTION")
	private String description;

	@Getter
	@Setter
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PERSON_ID", nullable = false)
	private Cperson Cperson;

}
