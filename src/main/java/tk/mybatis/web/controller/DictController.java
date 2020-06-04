package tk.mybatis.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import tk.mybatis.web.model.SysDict;
import tk.mybatis.web.service.DictService;

@Controller
@RequestMapping("/dicts")
public class DictController {
	
	@Autowired
	private DictService dictService;
	
	/**
	 * 显示字典数据列表
	 * @param dict
	 * @param offset
	 * @param limit
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView dicts(SysDict dict, Integer offset, Integer limit) {
		ModelAndView mv = new ModelAndView("dicts");
		List<SysDict> dicts = dictService.findByDict(dict, offset, limit);
		mv.addObject("dicts", dicts);
		return mv;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView add(Long id) {
		ModelAndView mv = new ModelAndView("dict_add");
		mv.addObject("dict", new SysDict());
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
}
