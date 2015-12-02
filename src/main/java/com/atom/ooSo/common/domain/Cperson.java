package com.atom.ooSo.common.domain;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "C_PERSON")
@NamedQuery(name="Cperson.findAll", query="SELECT c FROM Cperson c")
@NoArgsConstructor
@AllArgsConstructor
public class Cperson extends IdEntity {
	
	@Getter
	@Setter
	@Column(name = "SSOID")
	private String ssoId;
	
	@Getter
	@Setter
	@Column(name = "STATUS")
	private String status;

	@Getter
	@Setter
	@Column(name = "LOGIN_NAME")
	private String loginName;

	@Getter
	@Setter
	@Column(name = "LOGIN_PASSWORD")
	private String loginPassword;

	@Getter
	@Setter
	@Column(name = "USER_NAME")
	private String userName;

	@Getter
	@Setter
	@Column(name = "CREATE_TIME")
	private String createTime;

	@Getter
	@Setter
	@Column(name = "MODIFY_TIME")
	private String modifyTime;
	
	@Getter
	@Setter
	@Column(name = "DESCRIPTION")
	private String description;

	@Getter
	@Setter
	@Column(name = "ROLE_STATUS")
	private String roleStatus;

	@Getter
	@Setter
	@Column(name = "SECURITY_LEVEL")
	private String securityLevel;

	@Getter
	@Setter
	@Column(name = "EMAIL")
	private String email;
	
	@Getter
	@Setter
	@OneToMany(fetch = FetchType.EAGER, mappedBy="Cperson")
	private Set<CpersonRole> CpersonRoles;
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}