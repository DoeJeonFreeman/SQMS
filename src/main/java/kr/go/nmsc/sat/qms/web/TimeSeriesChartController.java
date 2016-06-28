package kr.go.nmsc.sat.qms.web;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.go.nmsc.sat.qms.domain.TimeSeriesDataVO;
import kr.go.nmsc.sat.qms.service.TimeSeriesChartService;


@Controller
public class TimeSeriesChartController {

	/** TimeSeriesChartService */
	@Autowired
	private TimeSeriesChartService chartService;
	
	/**Level 1 B */
	/**
		loop through each row returned
		each key will be the column_name
		each value will be the field value for that row and column
	 */
	
	
	//Level 1 A Visible SNR
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
//	public Vector<HashMap<String,Object>> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		System.out.println("TimeSeriesChartController.selectMatchingData_VsibleSNR()");
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_VSNR(targetDate);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec = new Vector<HashMap<String,Object>>();
		
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
////		
		
		for(HashMap<String,Object> row : results){
			
			HashMap<String,Object> vMap = new HashMap<String,Object> (); 
			String currDate= row.get("DSTR").toString();
			double currVal = Double.parseDouble(row.get("DT_"+detector).toString());
//			vMap.put("DSTR", currDate);
//			vMap.put("D_0", currVal - Double.parseDouble(row.get("DT_0").toString()));
//			vMap.put("D_1", currVal - Double.parseDouble(row.get("DT_1").toString()));
//			vMap.put("D_2", currVal - Double.parseDouble(row.get("DT_2").toString()));
//			vMap.put("D_3", currVal - Double.parseDouble(row.get("DT_3").toString()));
//			vMap.put("D_4", currVal - Double.parseDouble(row.get("DT_4").toString()));
//			vMap.put("D_5", currVal - Double.parseDouble(row.get("DT_5").toString()));
//			vMap.put("D_6", currVal - Double.parseDouble(row.get("DT_6").toString()));
//			vMap.put("D_7", currVal - Double.parseDouble(row.get("DT_7").toString()));
//			vec.add(vMap);
			
			HashMap<String,Object> vMap0 = new HashMap<String,Object>();
			vMap0.put("D", currDate);
			vMap0.put("V", currVal - Double.parseDouble(row.get("DT_0").toString()));
			vec0.add(vMap0);
			
			HashMap<String,Object> vMap1 = new HashMap<String,Object>();
			vMap1.put("D", currDate);
			vMap1.put("V", currVal - Double.parseDouble(row.get("DT_1").toString()));
			vec1.add(vMap1);
			
			HashMap<String,Object> vMap2 = new HashMap<String,Object>();
			vMap2.put("D", currDate);
			vMap2.put("V", currVal - Double.parseDouble(row.get("DT_2").toString()));
			vec2.add(vMap2);
			
			HashMap<String,Object> vMap3 = new HashMap<String,Object>();
			vMap3.put("D", currDate);
			vMap3.put("V", currVal - Double.parseDouble(row.get("DT_3").toString()));
			vec3.add(vMap3);
			
			HashMap<String,Object> vMap4 = new HashMap<String,Object>();
			vMap4.put("D", currDate);
			vMap4.put("V", currVal - Double.parseDouble(row.get("DT_4").toString()));
			vec4.add(vMap4);
			
			HashMap<String,Object> vMap5 = new HashMap<String,Object>();
			vMap5.put("D", currDate);
			vMap5.put("V", currVal - Double.parseDouble(row.get("DT_5").toString()));
			vec5.add(vMap5);
			
			HashMap<String,Object> vMap6 = new HashMap<String,Object>();
			vMap6.put("D", currDate);
			vMap6.put("V", currVal - Double.parseDouble(row.get("DT_6").toString()));
			vec6.add(vMap6);
			
			HashMap<String,Object> vMap7 = new HashMap<String,Object>();
			vMap7.put("D", currDate);
			vMap7.put("V", currVal - Double.parseDouble(row.get("DT_7").toString()));
			vec7.add(vMap7);
			
		}
		
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		if(vec6.size()!=0)arr.add(vec6);
		if(vec7.size()!=0)arr.add(vec7);
		return arr;
	}
	
//	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
//	@ResponseBody
////	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
//		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_VSNR(targetDate);
//		
//		//ㅠ 
//		ArrayList<Vector> arr = new ArrayList<Vector>();
//		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
//		
//		for(HashMap<String,Object> row : results){
//			if(row.get("DETECTOR").toString().equals("0")){
//				vec0.add(row);
//			}else if(row.get("DETECTOR").toString().equals("1")){
//				vec1.add(row);
//			}else if(row.get("DETECTOR").toString().equals("2")){
//				vec2.add(row);
//			}else if(row.get("DETECTOR").toString().equals("3")){
//				vec3.add(row);
//			}else if(row.get("DETECTOR").toString().equals("4")){
//				vec4.add(row);
//			}else if(row.get("DETECTOR").toString().equals("5")){
//				vec5.add(row);
//			}else if(row.get("DETECTOR").toString().equals("6")){
//				vec6.add(row);
//			}else if(row.get("DETECTOR").toString().equals("7")){
//				vec7.add(row);
//			}
//		}
//		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
//		if(vec6.size()!=0)arr.add(vec6);
//		if(vec7.size()!=0)arr.add(vec7);
//		return arr;
//	}
	
	
/*	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_VSNR(targetDate);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("DETECTOR").toString().equals("0")){
				vec0.add(row);
			}else if(row.get("DETECTOR").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("DETECTOR").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("DETECTOR").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("DETECTOR").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("DETECTOR").toString().equals("5")){
				vec5.add(row);
			}else if(row.get("DETECTOR").toString().equals("6")){
				vec6.add(row);
			}else if(row.get("DETECTOR").toString().equals("7")){
				vec7.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		if(vec6.size()!=0)arr.add(vec6);
		if(vec7.size()!=0)arr.add(vec7);
		return arr;
	}
	
*/	
	/*
	 * Level 1 A Visible Radiance*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VR", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VisibleRadiance(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_VR(targetDate, detector);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		
//		('RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD')
		
		for(HashMap<String,Object> row : results){
			if(row.get("NAME").toString().equals("RadianceMin")){
				vec0.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMax")){
				vec1.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMean")){
				vec2.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMedian")){
				vec3.add(row);
			}else if(row.get("NAME").toString().equals("RadianceSTD")){
				vec4.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	

	
	/*
	 * Level 1 A IR Radiance Statistics _JOHN */
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRRS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IRRS(@RequestParam("targetDate") String targetDate, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_IRRS(targetDate, detector);
		//ㅠ 
//		System.out.println("selectMatchingData_IRRS() result.size == " + results.size());
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		
		//(7,8,28,30,31) 
//		Iterator<String> iter = results.get(0).keySet().iterator();
//		while(iter.hasNext()){
//			System.out.println(iter.next());
//		}
		
		for(HashMap<String,Object> row : results){
			if(row.get("PID").toString().equals("7")){
//				System.out.print("\tIMGREF: " + row.get("IMGREF"));
//				System.out.print("\tPID: " + row.get("PID"));
//				System.out.print("\tTYPENAME: " + row.get("TYPENAME"));
//				System.out.println("\tv: " + row.get("PARAMVALUE"));
				vec0.add(row);
			}else if(row.get("PID").toString().equals("8")){
				vec1.add(row);
			}else if(row.get("PID").toString().equals("28")){
				vec2.add(row);
			}else if(row.get("PID").toString().equals("30")){
				vec3.add(row);
			}else if(row.get("PID").toString().equals("31")){
				vec4.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A Visible PRNU*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VisblePRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsiblePRNU(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_VisPRNU(targetDate, detector);
			
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
				vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A IR PRNU*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRPRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_PRNU(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_IRPRNU(targetDate, detector);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A IR NEDT*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRNEDT", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_NEDT(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_IRNEDT(targetDate, detector);
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		
		
		for(HashMap<String,Object> row : results){
			if(row.get("CHANNEL").toString().equals("2")){
				vec0.add(row);
			}else if(row.get("CHANNEL").toString().equals("3")){
				vec1.add(row);
			}else if(row.get("CHANNEL").toString().equals("4")){
				vec2.add(row);
			}else if(row.get("CHANNEL").toString().equals("5")){
				vec3.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A ENV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_ENV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1A_ENV(@RequestParam("targetDate") String targetDate, String ENVType,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1A_ENV(targetDate, ENVType);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	

	
	
	
	/*
	 * Number of Valid Landmarks*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_NVL", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_NumberOfValidLandmarks(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_NVL(targetDate);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
//		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
		}
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return chartService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	/* L_1_B_STDDEV
	 * L_1_B_STDDEV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_STDDEV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_STDDEV(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_STDDEV(targetDate);
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		
		return arr;
	}
	
	
	/* L_1_B_QUADDIST
	 * L_1_B_QUADDIST
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_B_QUADDIST", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_QUADDIST(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_QUADDIST(targetDate);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		
		return arr;
	}

	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_RAVG", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_ResidualAvg(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_RAVG(targetDate);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return chartService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	
	
	/*
	 * Level 1 B ENV Spacecraft Position (at image center)*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_SCPOS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_spacecraftPosition(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_SCPOS(targetDate);
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/*
	 * Level 1 B ENV Spacecraft Attitude (AOCS Local Orbital Frame)*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_SCATT", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_spacecraftAttitude(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = chartService.getSeriesRetrieval_L1B_SCATT(targetDate);
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	
	/**via ajax*/
	/*	@RequestMapping(value = "arctic/findMatchingStuff", method=RequestMethod.GET)
	@ResponseBody
	public MostRecentStuffVO selectMatchingData(String selectedDate, ModelMap model) throws Exception{
		MostRecentStuffVO stuff =  chartService.findMatchingArcticData(selectedDate);
		return stuff;
	}
	 */	
	
	/**via ajax*/
/*	@RequestMapping(value = "arctic/findMatchingStuffs", method=RequestMethod.GET)
	@ResponseBody
	public List<MostRecentStuffVO> selectMatchingDataList(String dBegin, String dEnd, ModelMap model) throws Exception{
		List<MostRecentStuffVO> stuff =  chartService.findMatchingArcticDataList(dEnd);
		return stuff;
	}
*/	
	
	@RequestMapping(value = "/ajax/getSeriesData")
	@ResponseBody
	public TimeSeriesDataVO timeseriesOutputter(@RequestParam("whichSeries") String typeId, HttpServletRequest req ){
//		("timeseriesOutputter(" + typeId + ") call this method causes 406(not acceptable) error" );
		String path = req.getSession().getServletContext().getRealPath("/arcticData")+"/ASC/CONCENT/" + typeId + ".json";
		
		JSONObject json_subtracted = new JSONObject();
		FileReader reader = null;
		
		try {
			// read the json file
			reader = new FileReader(path);

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(reader);

			json_subtracted.put("someList",jsonObject);
			
		} catch (FileNotFoundException ex) {
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		} catch (ParseException ex) {
			ex.printStackTrace();
		} catch (NullPointerException ex) {
			ex.printStackTrace();
		}finally{
	            try {
	            	if(reader !=null)reader.close();
		        } catch (IOException e) {
	                e.printStackTrace();
		        }
        }
		
		TimeSeriesDataVO series = new TimeSeriesDataVO();
		JSONObject obj = new JSONObject();
		obj.put("ice", json_subtracted);
		series.setTypeId("haha");
		series.setData(obj);
		
		return series;
	}
	

	
	
}
