package tk.mybatis.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.mybatis.web.mapper.DictMapper;
import tk.mybatis.web.model.SysDict;
import tk.mybatis.web.service.DictService;

@Service("dictService")
public class DictServiceImpl implements DictService {

	@Autowired
	private DictMapper dictMapper;
	
	@Override
	public SysDict findById(Long id) {
		
		return dictMapper.selectByPrimeKey(id);
	}

	@Override
	public List<SysDict> findByDict(SysDict dict, Integer offset, Integer limit) {
		return dictMapper.selectBySysDict(dict, (offset != null && limit != null) ? new RowBounds(offset, limit) : RowBounds.DEFAULT);
	}

}
