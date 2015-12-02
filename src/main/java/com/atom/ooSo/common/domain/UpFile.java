package com.atom.ooSo.common.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "CO_PART")
public class UpFile extends IdEntity {

	@Getter
	@Setter
	@Column(name = "NAME")
	private String name;

	@Getter
	@Setter
	@Column(name = "LOCATION")
	private String location;

	@Getter
	@Setter
	@Column(name = "SIZE")
	private Long size;
	
	@Getter
	@Setter
	@Column(name = "WHATSTYPE")
	private String whatstype;

}
