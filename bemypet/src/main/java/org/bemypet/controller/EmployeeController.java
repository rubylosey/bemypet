package org.bemypet.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bemypet.domain.EmployeeVO;
import org.bemypet.service.EmployeeService;
import org.nextway.domain.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/employee/*")
public class EmployeeController {
	
	@Inject
	EmployeeService employeeService;
	
	
	// 직원 목록
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List list = employeeService.list();
		model.addAttribute("list", list);
	}
	
	// 직원 조회
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public void getView(@RequestParam("empid") String empid, Model model) throws Exception {
		EmployeeVO evo = employeeService.view(empid);
		model.addAttribute("view",  evo);
	}

	// 직원 등록 GET:  화면처리
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {}
	
	// 직원 등록 POST : 데이터 처리
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(EmployeeVO evo) throws Exception {
		employeeService.register(evo);
		
		return "redirect:/employee/list";
	}
	
	
	// 아이디 중복 확인
		@ResponseBody
		@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
		public String postIdCheck(HttpServletRequest req) throws Exception {
			String empid = req.getParameter("empid");
			EmployeeVO check =  employeeService.idCheck(empid);
		   
			String result = null;
		   
			if(check != null) { result = "success"; }   
		   
			return result;
		}
		
		
	// 직원 수정 GET : 화면 처리
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void getModify(@RequestParam("empid") String empid, Model model) throws Exception {
		System.out.println("========== 직원 수정 : 화면 처리");
		
		EmployeeVO evo = employeeService.view(empid);
		model.addAttribute("modify",evo);
	}
	
	// 직원 수정 POST: 데이터 처리
		@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String postModify(EmployeeVO evo) throws Exception {
			System.out.println("========== 회원 수정 : 데이터 처리");
			   
			employeeService.modify(evo);
			 
			return "redirect:/employee/view?empid="+evo.getEmpid();
		}
		
	
	// 로그인 : 화면처리
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void login() throws Exception { }
		
	// 로그인 : 데이터 처리
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(EmployeeVO evo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		System.out.println("============로그인:데이터처리============");
		
		HttpSession session = req.getSession();
		EmployeeVO eevo = employeeService.login(evo);
		
		if(evo == null) {
			System.out.println("=============로그인 실패");
			session.setAttribute("employee", null);
			rttr.addAttribute("msg", false);
		} else {
			System.out.println("=============로그인 성공");
			session.setAttribute("employee", eevo);
		}
		
		return "redirect:/employee/login";
	}
		
		// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) throws Exception {
		System.out.println("========== 로그아웃 : 세션 삭제");
	   
		session.invalidate();
	     
		return "redirect:/";
	}
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
}
