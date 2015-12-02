package com.atom.ooSo.common.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "C_PERSON_ROLE")
@NamedQuery(name="CpersonRole.findAll", query="SELECT c FROM CpersonRole c")
@NoArgsConstructor
@AllArgsConstructor
public class CpersonRole extends IdEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Getter
	@Setter
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="PERSON_ID")
	private Cperson Cperson;

	@Getter
	@Setter
	@Column(name = "ROLE")
	private String role;

	@Getter
	@Setter
	@Column(name = "DEPT_ID")
	private String deptId;

	@Getter
	@Setter
	@Column(name = "DEPT_DN")
	private String deptDn;

	@Getter
	@Setter
	@Column(name = "INCLUDE_SON")
	private String includeSon;

	@Getter
	@Setter
	@Column(name = "SECURITY_LEVEL")
	private String securityLevel;

	@Getter
	@Setter
	@Column(name = "POS")
	private String pos;

	@Getter
	@Setter
	@Column(name = "ROLE_NAME")
	private String roleName;
	
}