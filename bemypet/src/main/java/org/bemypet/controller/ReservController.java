package org.bemypet.controller;

import java.util.List;

import javax.inject.Inject;

import org.bemypet.domain.ReservVO;
import org.bemypet.service.ReservService;
import org.nextway.domain.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/reserv/*")
public class ReservController {
	
	@Inject
	private ReservService reservService;
	
	// 강아지 예약등록 : 데이터 처리
	@RequestMapping(value="/dogres", method=RequestMethod.POST)
	public String postAreg(ReservVO rvo) throws Exception {
		reservService.awrite(rvo);
		
		return "redirect:/reserv/list";
	}
	
	// 예약 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List list = reservService.list();
		model.addAttribute("list", list);
	}
		
	// 예약 조회
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public void getView(@RequestParam("userId") String userId, Model model) throws Exception {
		
		ReservVO rvo = reservService.view(userId);
		model.addAttribute("view", rvo);
	}	
	
	@RequestMapping(value="/view2", method=RequestMethod.GET)
	public void getView2(@RequestParam("num") int num, Model model) throws Exception {
		
		ReservVO nvo = reservService.view2(num);
		model.addAttribute("view2", nvo);
	}	
	
	// 예약등록 : 화면 처리
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception { }
	
	// 예약등록 : 데이터 처리
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(ReservVO rvo) throws Exception {
		reservService.write(rvo);
		return "redirect:/reserv/list";
	}
	
	// 예약 수정GET : 화면 처리
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("num") int num, Model model) throws Exception {
		System.out.println("========== 예약 수정 : 화면 처리");
		
		ReservVO rvo = reservService.view2(num);
		model.addAttribute("modify", rvo);	
	}
	
	// 예약 수정 POST : 데이터 처리
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String postModify(ReservVO rvo) throws Exception {
		System.out.println("========== 예약 수정 : 데이터 처리");
		
		reservService.modify(rvo);
		
		return "redirect:/reserv/view2?num="+rvo.getNum();
	}
	
	// 예약 삭제 
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String getDelete(@RequestParam("num") int num) throws Exception {
		reservService.delete(num);
		
		return "redirect:/reserv/list";
	}
	
	// 예약 승인 처리
	@RequestMapping(value="/approve", method=RequestMethod.GET)
	public String reservOk(@RequestParam("num") int num) throws Exception {
		reservService.reservOk(num);
		
		return "redirect:/reserv/list";	
	}
	
	// 예약 취소 처리
		@RequestMapping(value="/cancel", method=RequestMethod.GET)
		public String reservNg(@RequestParam("num") int num) throws Exception {
			reservService.reservNg(num);
			
			return "redirect:/reserv/list";	
		}
		

	
	
	
	
	
	
}
