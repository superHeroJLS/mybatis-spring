package tk.mybatis.web.service;

import java.util.List;

import tk.mybatis.web.model.SysDict;

public interface DictService {
	SysDict findById(Long id);
	
	List<SysDict> findByDict(SysDict dict, Integer offset, Integer limit);
}
