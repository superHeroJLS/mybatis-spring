package tk.mybatis.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import tk.mybatis.web.model.SysDict;

public interface DictMapper {
	SysDict selectByPrimeKey(@Param("id")Long id);
	
	List<SysDict> selectBySysDict(SysDict dict, RowBounds rowBounds);
}
