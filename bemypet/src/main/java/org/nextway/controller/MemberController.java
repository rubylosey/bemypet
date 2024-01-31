package org.nextway.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.bemypet.service.ReservService;
import org.nextway.domain.MemberVO;
import org.nextway.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	 
	@Inject
	MemberService memberService;
	
	@Inject
	ReservService reservService;
	
	
	// 회원 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List list = memberService.list();
		model.addAttribute("list", list);
	}
	
	
	// 회원 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("userId") String userId, Model model) throws Exception {
		MemberVO vo = memberService.view(userId);
		model.addAttribute("view", vo);
	
	}

	
	// 회원 가입 GET : 화면 처리
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception { }
	
	// 아이디 중복 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String postIdCheck(HttpServletRequest req) throws Exception {
		String userId = req.getParameter("userId");
		MemberVO check =  memberService.idCheck(userId);
	   
		String result = null;
	   
		if(check != null) { result = "success"; }   
	   
		return result;
	}
	
	// 닉네임 중복 확인
	@ResponseBody
	@RequestMapping(value = "/nickNameCheck", method = RequestMethod.POST)
	public String postNickNameCheck(HttpServletRequest req) throws Exception {
		String nickName = req.getParameter("nickName");
		MemberVO check =  memberService.nickNameCheck(nickName);
	   
		String result = null;
	   
		if(check != null) { result = "success"; }   
	   
		return result;
	}

	// 회원 가입 POST : 데이터 처리
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		memberService.register(vo);
		
		return "redirect:/member/login";
	}
	
	
	// 회원 수정 GET: 화면 처리
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("userId") String userId, Model model) throws Exception {
		System.out.println("========== 회원 수정 : 화면 처리");
		
		MemberVO vo = memberService.view(userId);
		model.addAttribute("modify", vo);
	}
	
	// 회원 수정 POST: 데이터 처리
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(MemberVO vo) throws Exception {
		System.out.println("========== 회원 수정 : 데이터 처리");
		   
		memberService.modify(vo);
		 
		return "redirect:/member/view?userId="+vo.getUserId();
	}
	
	
	// 회원 삭제 GET : 화면 처리
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public void getDelete(@RequestParam("userId") String userId, Model model) throws Exception {
		MemberVO vo = memberService.view(userId);
		model.addAttribute("delete", vo);
	}
	
	// 회원 삭제 POST : 데이터 처리
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String postWithdrawal(HttpSession session, MemberVO vo, RedirectAttributes rttr) throws Exception {
		MemberVO member = (MemberVO)session.getAttribute("member"); //로그인한 회원 객체를 얻는다.
		String memberId = member.getUserId(); //로그인한 회원의 아이디를 얻는다.
		String memberPass = member.getUserPass(); //로그인한 회원의 비밀번호를 얻는다.	
		String userId = null; //선택한 회원의 아이디
		String userPass = null; //입력폼에 입력한 비밀번호
		String str=null; //페이지 이동
	   
		if (memberId.equals("admin")) { //로그인한 회원이 관리자이면
			userId = vo.getUserId(); //선택한 회원의 아이디를 얻는다.
			userPass = vo.getUserPass(); //입력폼에 입력한 비밀번호를 얻는다.
			
			MemberVO selectMember = memberService.view(userId); //선택한 회원 객체를 얻는다.
			String pwd = selectMember.getUserPass(); //선택한 회원의 비밀번호를 얻는다.
		   
			if (pwd.equals(userPass)) { //선택한 회원의 비밀번호와 입력폼에 입력한 비밀번호가 같으면
				memberService.delete(selectMember); //선택한 회원을 삭제한다.
				str = "redirect:/member/list";
		   } else { //선택한 회원의 비밀번호와 입력폼에 입력한 비밀번호가 다르면
			   rttr.addFlashAttribute("msg", false); //msg에 false를 저장한다.
			   str = "redirect:/member/delete?userId="+userId; //회원삭제 화면으로 이동한다.
		   }
	   } else { //로그인한 회원이 일반 회원이면
		   userId = vo.getUserId(); //회원의 아이디를 얻는다.
		   userPass = vo.getUserPass(); //입력폼에 입력한 비밀번호를 얻는다.
		   
		   if (memberPass.equals(userPass)) { //로그인한 회원의 비밀번호와 입력폼에 입력한 비밀번호가 같으면
			   memberService.delete(vo); //로그인한 회원을 삭제한다.
			   session.invalidate(); //세션에 저장된 회원정보를 삭제한다.
			   str = "redirect:/";
		   } else { //로그인한 회원의 비밀번호와 입력폼에 입력한 비밀번호가 다르면
			   rttr.addFlashAttribute("msg", false);
			   str = "redirect:/member/delete?userId="+userId;
		   }
	   }
	    
	   return str;
	}
	
	
	
	
	// 로그인 : 화면 처리
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() throws Exception { }
	
	// 로그인 : 데이터 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		System.out.println("========== 로그인 : 데이터 처리");
	   
		HttpSession session = req.getSession();
		MemberVO mvo = memberService.login(vo);

		if(mvo == null) {
			System.out.println("========== 로그인 실패");
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			System.out.println("========== 로그인 성공");
			session.setAttribute("member", mvo);
		}

		return "redirect:/member/login";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) throws Exception {
		System.out.println("========== 로그아웃 : 세션 삭제");
	   
		session.invalidate();
	     
		return "redirect:/";
	}
	

	
	

}
