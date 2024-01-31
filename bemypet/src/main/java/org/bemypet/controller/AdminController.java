package org.bemypet.controller;

import java.util.List;

import javax.inject.Inject;

import org.bemypet.domain.AdoptVO;
import org.bemypet.service.AdoptService;
import org.bemypet.service.EmployeeService;
import org.bemypet.service.ReservService;
import org.nextway.domain.MemberVO;
import org.nextway.service.BoardService;
import org.nextway.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Inject
	AdoptService adoptService;
	
	@Inject
	MemberService memberService;
	
	@Inject
	BoardService boardService;
	
	@Inject
	ReservService reservService;
	
	@Inject
	EmployeeService employeeService;
	
	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List alist = adoptService.getList();
		List vlist = reservService.list();
		List elist = employeeService.list();
		List mlist = memberService.list();
		List blist = boardService.list();
		
		
		model.addAttribute("alist", alist);
		model.addAttribute("elist", elist);
		model.addAttribute("mlist", mlist);
		model.addAttribute("blist", blist);
		model.addAttribute("vlist", vlist);
		
		
		
		int dogCnt = adoptService.dogCnt();
		int smCnt = adoptService.smCnt("소형견");
		int mdCnt = adoptService.mdCnt("중형견");
		int lgCnt = adoptService.lgCnt("대형견");
		
		model.addAttribute("dogtotal", dogCnt);
		model.addAttribute("smCnt", smCnt);
		model.addAttribute("mdCnt", mdCnt);
		model.addAttribute("lgCnt", lgCnt);
		
		int aareaCnt = adoptService.aareaCnt("A");
		int bareaCnt = adoptService.bareaCnt("B");
		int careaCnt = adoptService.careaCnt("C");
		int dareaCnt = adoptService.dareaCnt("D");
		
		model.addAttribute("aareaCnt", aareaCnt);
		model.addAttribute("bareaCnt", bareaCnt);
		model.addAttribute("careaCnt", careaCnt);
		model.addAttribute("dareaCnt", dareaCnt);
	}	
	
	
	
	
}
