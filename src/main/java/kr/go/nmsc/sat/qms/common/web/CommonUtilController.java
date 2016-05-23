package kr.go.nmsc.sat.qms.common.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommonUtilController {

    
	@RequestMapping(value="/mePageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpSession session, @RequestParam(value="menuNo", required=false) String menuNo){
		String link = linkPage;
		if (linkPage==null || linkPage.equals("")){
			link="cmm/error/SQMSError";
		}else{
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		if (menuNo!=null && !menuNo.equals("")){
			session.setAttribute("menuNo",menuNo);
		}
		return link;
	}

	@RequestMapping(value="/mePageLink.haha")
	public String moveToPage_action(@RequestParam("link") String linkPage){
		String link = linkPage;
		if (linkPage==null || linkPage.equals("")){
			link="cmm/SQMSError";
		}
		return link;
	}
	
	@RequestMapping("/validator.do")
	public String validate(){
		return "cmm/validator";
	}

}