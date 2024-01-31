package org.bemypet.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.bemypet.domain.AdoptVO;
import org.bemypet.service.AdoptService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
@RequestMapping("/adopt/*")
public class AdoptController {

	@Inject
	AdoptService adoptService;
	
	// 강아지 예약등록 : 화면 처리
	@RequestMapping(value = "/dogres", method = RequestMethod.GET)
	public void getAreg(@RequestParam("dno") int dno, Model model) throws Exception {
		AdoptVO arvo = adoptService.aview(dno);
		model.addAttribute("aview", arvo);
		
		System.out.println("======= 강쥐 예약 화면");
	}
	
	
	// 유기견 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List alist = adoptService.getList();
		model.addAttribute("alist", alist);
	}
	
	// 유기견 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("dno") int dno, Model model) throws Exception {
		AdoptVO avo = adoptService.getView(dno);
		model.addAttribute("view", avo);
	}
	
	
	// 유기견 등록 GET: 화면 처리
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {}

	// 유기견 등록 POST: 데이터 처리
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(AdoptVO avo) throws Exception {
		adoptService.register(avo);
		
		return "redirect:/adopt/list";
	}
	
	
	// 유기견 수정 GET: 화면 처리
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("dno") int dno, Model model) throws Exception {
		AdoptVO avo = adoptService.getView(dno);
		model.addAttribute("view", avo);
	}
	
	// 유기견 수정 POST: 데이터 처리
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(AdoptVO avo) throws Exception {
		adoptService.modify(avo);
		 
		return "redirect:/adopt/view?dno="+avo.getDno();
	}
	
	
	// 유기견 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("dno") int dno) throws Exception {
		adoptService.delete(dno);

		return "redirect:/adopt/list";
	}
	
	// 유기견 이미지 업로드
	@ResponseBody
	@RequestMapping(value = "/ckUpload")
    public void communityImageUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws Exception {
		JsonObject jsonObject = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		if(file != null) {
			if(file.getSize() >0 && StringUtils.isNotBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
				    try{
				    	 
			            String fileName = file.getOriginalFilename();
			            byte[] bytes = file.getBytes();
			           
			            String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/board"); //저장경로
			            System.out.println("uploadPath:"+uploadPath);

			            File uploadFile = new File(uploadPath);
			            if(!uploadFile.exists()) {
			            	uploadFile.mkdir();
			            }
			            String fileName2 = UUID.randomUUID().toString();
			            uploadPath = uploadPath + "/" + fileName2 +fileName;
			            
			            out = new FileOutputStream(new File(uploadPath));
			            out.write(bytes);
			            
			            printWriter = resp.getWriter();
			            String fileUrl = req.getContextPath() + "/resources/images/board/" +fileName2 +fileName; //url경로
			            System.out.println("fileUrl :" + fileUrl);
			            JsonObject json = new JsonObject();
			            json.addProperty("uploaded", 1);
			            json.addProperty("fileName", fileName);
			            json.addProperty("url", fileUrl);
			            printWriter.print(json);
			            System.out.println(json);
			 
			        }catch(IOException e){
			            e.printStackTrace();
			        } finally {
			            if (out != null) {
		                    out.close();
		                }
		                if (printWriter != null) {
		                    printWriter.close();
		                }
			        }
				}
			}
		}
	}

}
