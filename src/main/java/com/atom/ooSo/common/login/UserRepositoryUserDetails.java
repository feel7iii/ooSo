package com.atom.ooSo.common.login;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.atom.ooSo.common.domain.Cperson;
import com.atom.ooSo.common.domain.CpersonRole;

public class UserRepositoryUserDetails extends Cperson implements UserDetails {

	private static final long serialVersionUID = 1L;

	private Cperson cperson;

	public UserRepositoryUserDetails(Cperson cperson) {
		this.cperson = cperson;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		Collection<GrantedAuthority> authorities = new ArrayList<>();
		Set<CpersonRole> cpersonRoles = cperson.getCpersonRoles();

		if (cpersonRoles != null) {
			for (CpersonRole cpRole : cpersonRoles) {
				SimpleGrantedAuthority authority = new SimpleGrantedAuthority(cpRole.getRoleName());
				authorities.add(authority);
			}
		}
		return authorities;
	}

	@Override
	public String getUsername() {
		return cperson.getLoginName();
	}

	@Override
	public String getPassword() {
		return cperson.getLoginPassword();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
}