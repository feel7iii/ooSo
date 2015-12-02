package com.atom.ooSo.modules.cms.service;

import java.util.Map;

import org.springframework.data.domain.Page;

import com.atom.ooSo.common.domain.Cperson;
import com.atom.ooSo.modules.cms.domain.Task;

public interface TaskService {

	Page<Task> getPersonTask(Long cpersonId, Map<String, Object> searchParams, int pageNumber, int pageSize, String sortType);

	Cperson findByLoginName(String loginName);

}
