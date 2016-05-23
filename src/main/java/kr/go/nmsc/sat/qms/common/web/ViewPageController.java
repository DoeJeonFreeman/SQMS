package kr.go.nmsc.sat.qms.common.web;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.nmsc.sat.qms.domain.UpToDateStuffVO;
import kr.go.nmsc.sat.qms.service.TimeSeriesChartService;

@Controller 
public class ViewPageController {

	 @Autowired
	 private TimeSeriesChartService timeseriesService;
	 
	/**
	 *
	 */
	@RequestMapping(value = "/cmm/forwardPage.do")
	public String forwardPageWithMenuNo(HttpServletRequest request, @RequestParam Map<String, Object> commandMap)
	  throws Exception{
		return "";
	}

	/**
	 * mainView ae yum
	 */
	@RequestMapping(value = "/common/mainView.do")
	public String getMainView(HttpServletRequest request, ModelMap model) throws Exception{
		//notice x last 3
		/*
        int numPerPage = 3;
        int pagePerBlock = 3;
        int totalRecord = boardService.getTotalRecord("notice", "");
        PagingHelper pagingHelper = new PagingHelper(totalRecord, 1, numPerPage, pagePerBlock);
        boardService.setPagingHelper(pagingHelper);
        List<Article> list = boardService.getArticleList("notice", "");
        model.addAttribute("notices", list);
        */
		
        //MostRecentStuffVO stuff =  timeseriesService.retrievingIfArcticDataExists();
        //model.addAttribute("mostRecentStuff", stuff);
		return "main/main";
	}
	
	
	//testOnly
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	/** test/snippet1.do */
	@RequestMapping(value = "test/snippet1.do")
	public String test_1(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "_codeSnippet/snippet1";
	}
	/** test/snippet2.do */
	@RequestMapping(value = "test/snippet2.do")
	public String test_2(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "_codeSnippet/snippet2";
	}
	/** test/snippet3.do */
	@RequestMapping(value = "test/snippet3.do")
	public String test_3(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet3";
	}
	/** test/snippet4.do */
	@RequestMapping(value = "test/snippet4.do")
	public String test_4(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet4";
	}
	/** test/snippet5.do */
	@RequestMapping(value = "test/snippet5.do")
	public String test_5(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet5";
	}
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	
	
	
	
	
	
	
	/** QI/LV1A.do */
	/** QI/LV1A.do */
	/** QI/LV1A.do */
	@RequestMapping(value = "QI/LV1A.do")
	public String get_L1A_QI_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "QI/QI_LV1A";
	}
	
	/** EI/LV1A.do */
	/** EI/LV1A.do */
	/** EI/LV1A.do */
	@RequestMapping(value = "EI/LV1A.do")
	public String get_L1A_EI_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "EI/EI_LV1A";
	}
	
	
	
	
	
	
	/**QI_level_1_a.do*/
	/**QI_level_1_a.do*/
	/**QI_level_1_a.do*/
	@RequestMapping(value = "QI/level_1_a.do")
	public String get_L1A_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
//		return "QI/level_1_a";
		return "QI/level_1_a";
	}
	
	/**level_1_a_IRRS.do*/
	/**level_1_a_IRRS.do*/
	@RequestMapping(value = "QI/level_1_a_IRRadiance.do")
	public String get_L1A_IRRS_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A_IRRS("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRRS";
	}
	
	/**level_1_a_VisiblePRNU.do*/
	/**level_1_a_VisiblePRNU.do*/
	@RequestMapping(value = "QI/level_1_a_VisiblePRNU.do")
	public String get_L1A_VisPRNU_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A_VisPRNU("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_VisPRNU";
	}
	
	/**level_1_a_IR_PRNU.do*/
	/**level_1_a_IR_PRNU.do*/
	@RequestMapping(value = "QI/level_1_a_IR_PRNU.do")
	public String get_L1A_IRPRNU_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A_IRPRNU("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRPRNU";
	}
	
	/**level_1_a_IR_NEDT.do*/
	/**level_1_a_IR_NEDT.do*/
	@RequestMapping(value = "QI/level_1_a_IR_NEDT.do")
	public String get_L1A_IRNEDT_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1A_IRNEDT("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRNEDT";
	}
	
	
	
	
	
	
	
	
	//================================================================================================================LEVEL 1 B
	
	
	/**QI_level_1_b.do*/
	/**QI_level_1_b.do*/
	/**QI_level_1_b.do*/
	@RequestMapping(value = "QI/level_1_b.do")
	public String get_L1B_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO mostRecent =  timeseriesService.pickMostRecentStuff_L1B("CPP_NAVPERFO_V");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_b";
	}
	
	
	/**QI_level_2.do*/
	/**QI_level_2.do*/
	/**QI_level_2.do*/
	@RequestMapping(value = "QI/level_2.do")
	public String get_L2_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
//		MostRecentStuffVO mostRecent =  timeseriesService.retrievingIfArcticDataExists();
//      model.addAttribute("extSeries", mostRecent);
//		return "QI/sampleCodeSnippet";
		return "QI/level_2";
	}
	
	
	
	
	
	
	/*
	@RequestMapping(value = "arctic/monthlyPrediction.do")
	public String getPredictiveIceModel(HttpServletRequest request, ModelMap model) throws Exception{
		UpToDateStuffVO stuff =  timeseriesService.selectLatestStuff("02PRE");
        model.addAttribute("mostRecentStuff", stuff);
		return "arctic/ext_predictive";
	}
	
	@RequestMapping(value = "arctic/passage.do")
	public String getArcticSeaRoute(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO seaRoute =  timeseriesService.retrievingIfArcticDataExists();
		model.addAttribute("seaRoute", seaRoute);
		return "arctic/seaRoute";
	}*/
}