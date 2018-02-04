package kr.go.nmsc.sat.qms.web;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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

import kr.go.nmsc.sat.qms.dao.TimeSeriesDataDAOService;
import kr.go.nmsc.sat.qms.dao_L2.TimeSeriesDataDAOService_L2;
import kr.go.nmsc.sat.qms.domain.TimeSeriesDataVO;


@Controller
public class TimeSeriesChartController {

	@Autowired
	private TimeSeriesDataDAOService timeSeriesDataDAOService;
	
	@Autowired
	private TimeSeriesDataDAOService_L2 timeSeriesDataDAOService_L2;
	
	/**Level 1 B */
	/**
		loop through each row returned
		each key will be the column_name
		each value will be the field value for that row and column
	 */
	

	/* 1
	 * 
	 * CLA
	 * CLA
	 * CLA
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_CLA_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_CLA(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_CLA(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
				vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/* 
	 * 2
	 * 
	 * CLD
	 * CLD
	 * CLD
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_CLD_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_CLD(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_CLD(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	/* 3
	 * 
	 * FOG
	 * FOG
	 * FOG
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_FOG_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_FOG(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_FOG(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	/* 3-2
	 * 
	 * COMS vs. Ground
	 * 
	 * FOG
	 * FOG
	 * FOG
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_FOG_DAILY_VALIDATION_VS_GROUND", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_FOG2(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_FOG2(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/*  4
	 * 
	 * AI
	 * AI
	 * AI
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_AI_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_AI(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_AI(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/*  5
	 * 
	 * RI
	 * RI
	 * RI
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_RI_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_RI(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_RI(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/*  6
	 * 
	 * SST
	 * SST
	 * SST
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_SST_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_SST(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_SST(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	

	
	
	/* 10
	 * 
	 * AOD
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_AOD_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_AOD(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_AOD(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
				vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/* 11
	 * 
	 * INS
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_INS_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_INS(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_INS(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/* 12
	 * 
	 * LST
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_LST_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_LST(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_LST(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	/* 13
	 * 
	 * OLR 1
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_OLR_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_OLR(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_OLR(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/* 13
	 * 
	 * OLR 2
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_OLR2_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_OLR2(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_OLR2(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	/* 13
	 * 
	 * OLR 3
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_OLR3_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_OLR3(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_OLR3(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/* 13
	 * 
	 * OLR 4
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_OLR4_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_OLR4(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_OLR4(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	/* 
	 * 14
	 * 
	 * SSI
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_SSI_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_SSI(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_SSI(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	/* 
	 * 14
	 * 
	 * SSI
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_SSI2_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_SSI2(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_SSI2(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	/* 15
	 * 
	 * TPW
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_TPW_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_TPW(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_TPW(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/* 16
	 * 
	 * UTH
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_2_UTH_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_UTH(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_UTH(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////LEVEL 2 DAILY VALIDATION//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	//Level 1 A Moon Slope
	@RequestMapping(value = "timeseries/retrieval/L_1_A_MOON_SLOPE", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_MoonSlope(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_MoonSlopeFactor(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	//Level 1 A Visible SNR
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VSNR_Alternative(hashmap);
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
			if(row.get("DT_"+detector)==null){ continue; }
			double currVal = Double.parseDouble(row.get("DT_"+detector).toString());

			
			if(row.get("DT_0")!=null){
				HashMap<String,Object> vMap0 = new HashMap<String,Object>();
				vMap0.put("D", currDate);
//				vMap0.put("V", currVal - Double.parseDouble(row.get("DT_0").toString()));
				vMap0.put("V", Double.parseDouble(row.get("DT_0").toString()));
				vec0.add(vMap0);
			}
			
			if(row.get("DT_1")!=null){
				HashMap<String,Object> vMap1 = new HashMap<String,Object>();
				vMap1.put("D", currDate);
//				vMap1.put("V", currVal - Double.parseDouble(row.get("DT_1").toString()));
				vMap1.put("V", Double.parseDouble(row.get("DT_1").toString()));
				vec1.add(vMap1);
			}
			
			if(row.get("DT_2")!=null){
				HashMap<String,Object> vMap2 = new HashMap<String,Object>();
				vMap2.put("D", currDate);
//				vMap2.put("V", currVal - Double.parseDouble(row.get("DT_2").toString()));
				vMap2.put("V", Double.parseDouble(row.get("DT_2").toString()));
				vec2.add(vMap2);
			}
			
			if(row.get("DT_3")!=null){
				HashMap<String,Object> vMap3 = new HashMap<String,Object>();
				vMap3.put("D", currDate);
//				vMap3.put("V", currVal - Double.parseDouble(row.get("DT_3").toString()));
				vMap3.put("V", Double.parseDouble(row.get("DT_3").toString()));
				vec3.add(vMap3);
			}
			
			if(row.get("DT_4")!=null){
				HashMap<String,Object> vMap4 = new HashMap<String,Object>();
				vMap4.put("D", currDate);
//				vMap4.put("V", currVal - Double.parseDouble(row.get("DT_4").toString()));
				vMap4.put("V",Double.parseDouble(row.get("DT_4").toString()));
				vec4.add(vMap4);
			}
			
			if(row.get("DT_5")!=null){
				HashMap<String,Object> vMap5 = new HashMap<String,Object>();
				vMap5.put("D", currDate);
//				vMap5.put("V", currVal - Double.parseDouble(row.get("DT_5").toString()));
				vMap5.put("V",Double.parseDouble(row.get("DT_5").toString()));
				vec5.add(vMap5);
			}
			
			if(row.get("DT_6")!=null){
				HashMap<String,Object> vMap6 = new HashMap<String,Object>();
				vMap6.put("D", currDate);
//				vMap6.put("V", currVal - Double.parseDouble(row.get("DT_6").toString()));
				vMap6.put("V",Double.parseDouble(row.get("DT_6").toString()));
				vec6.add(vMap6);
			}
			
			if(row.get("DT_7")!=null){
				HashMap<String,Object> vMap7 = new HashMap<String,Object>();
				vMap7.put("D", currDate);
//				vMap7.put("V", currVal - Double.parseDouble(row.get("DT_7").toString()));
				vMap7.put("V",Double.parseDouble(row.get("DT_7").toString()));
				vec7.add(vMap7);
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
	
	/*
	 * 
	 * 
	 * 
	 * Level 1 A Visible PRNU
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VisblePRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsiblePRNU(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{

		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VisPRNU(hashmap);
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
			if(row.get("DT_"+detector)==null){ continue; }
			double currVal = Double.parseDouble(row.get("DT_"+detector).toString());

			
			if(row.get("DT_0")!=null){
				HashMap<String,Object> vMap0 = new HashMap<String,Object>();
				vMap0.put("D", currDate);
				vMap0.put("V", currVal - Double.parseDouble(row.get("DT_0").toString()));
				vec0.add(vMap0);
			}
			
			if(row.get("DT_1")!=null){
				HashMap<String,Object> vMap1 = new HashMap<String,Object>();
				vMap1.put("D", currDate);
				vMap1.put("V", currVal - Double.parseDouble(row.get("DT_1").toString()));
				vec1.add(vMap1);
			}
			
			if(row.get("DT_2")!=null){
				HashMap<String,Object> vMap2 = new HashMap<String,Object>();
				vMap2.put("D", currDate);
				vMap2.put("V", currVal - Double.parseDouble(row.get("DT_2").toString()));
				vec2.add(vMap2);
			}
			
			if(row.get("DT_3")!=null){
				HashMap<String,Object> vMap3 = new HashMap<String,Object>();
				vMap3.put("D", currDate);
				vMap3.put("V", currVal - Double.parseDouble(row.get("DT_3").toString()));
				vec3.add(vMap3);
			}
			
			if(row.get("DT_4")!=null){
				HashMap<String,Object> vMap4 = new HashMap<String,Object>();
				vMap4.put("D", currDate);
				vMap4.put("V", currVal - Double.parseDouble(row.get("DT_4").toString()));
				vec4.add(vMap4);
			}
			
			if(row.get("DT_5")!=null){
				HashMap<String,Object> vMap5 = new HashMap<String,Object>();
				vMap5.put("D", currDate);
				vMap5.put("V", currVal - Double.parseDouble(row.get("DT_5").toString()));
				vec5.add(vMap5);
			}
			
			if(row.get("DT_6")!=null){
				HashMap<String,Object> vMap6 = new HashMap<String,Object>();
				vMap6.put("D", currDate);
				vMap6.put("V", currVal - Double.parseDouble(row.get("DT_6").toString()));
				vec6.add(vMap6);
			}
			
			if(row.get("DT_7")!=null){
				HashMap<String,Object> vMap7 = new HashMap<String,Object>();
				vMap7.put("D", currDate);
				vMap7.put("V", currVal - Double.parseDouble(row.get("DT_7").toString()));
				vec7.add(vMap7);
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
	
	
	/* DEPRECATED 2018.01.23.
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VisblePRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsiblePRNU(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VisPRNU(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	*/
	
//	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
//	@ResponseBody
////	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
//		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.getSeriesRetrieval_L1A_VSNR(targetDate);
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
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.getSeriesRetrieval_L1A_VSNR(targetDate);
		
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
	public ArrayList<Vector> selectMatchingData_VisibleRadiance(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VR(hashmap);
		
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
	public ArrayList<Vector> selectMatchingData_IRRS(@RequestParam("targetDate") String targetDate, String dBegin,  String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRRS(hashmap);
		
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
	 * Level 1 A IR PRNU*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRPRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_PRNU(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("channel", channel);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRPRNU(hashmap);
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		
		
		for(HashMap<String,Object> row : results){
			String currDate= row.get("DSTR").toString();
			if(row.get("A220")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("A220").toString()));
				vm.put("SNAME", "220K (Detector A)");
				vec0.add(vm);
			}
			if(row.get("B220")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("B220").toString()));
				vm.put("SNAME", "220K (Detector B)");
				vec1.add(vm);
			}
			if(row.get("A300")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("A300").toString()));
				vm.put("SNAME", "300K (Detector A)");
				vec2.add(vm);
			}
			if(row.get("B300")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("B300").toString()));
				vm.put("SNAME", "300K (Detector B)");
				vec3.add(vm);
			}
		}
		if(vec0.size()!=0)arr.add(vec0); // Detecor A - 220K
		if(vec1.size()!=0)arr.add(vec1); // Detecor B - 220K
		if(vec2.size()!=0)arr.add(vec2); // Detecor A - 300K
		if(vec3.size()!=0)arr.add(vec3); // Detecor B - 300K
		return arr;
	}
	
	
	
	/*
	 * Level 1 A IR NEDT*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_NEDT", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_NEDT(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("channel", channel);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRNEDT(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		
		
		for(HashMap<String,Object> row : results){
//			if(row.get("CHANNEL").toString().equals("2")){	     // A220
//				vec0.add(row);
//			}else if(row.get("CHANNEL").toString().equals("3")){  // B220
//				vec1.add(row);
//			}else if(row.get("CHANNEL").toString().equals("4")){  // A300
//				vec2.add(row);
//			}else if(row.get("CHANNEL").toString().equals("5")){  // B300
//				vec3.add(row);
//			}
			String currDate= row.get("DSTR").toString();
			if(row.get("A220")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("A220").toString()));
				vm.put("SNAME", "220K (Detector A)");
				vec0.add(vm);
			}
			if(row.get("B220")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("B220").toString()));
				vm.put("SNAME", "220K (Detector B)");
				vec1.add(vm);
			}
			if(row.get("A300")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("A300").toString()));
				vm.put("SNAME", "300K (Detector A)");
				vec2.add(vm);
			}
			if(row.get("B300")!=null){
				HashMap<String,Object> vm = new HashMap<String,Object>();
				vm.put("DSTR", currDate);
				vm.put("VALUE", Double.parseDouble(row.get("B300").toString()));
				vm.put("SNAME", "300K (Detector B)");
				vec3.add(vm);
			}
		}
		if(vec0.size()!=0)arr.add(vec0); // Detecor A - 220K
		if(vec1.size()!=0)arr.add(vec1); // Detecor B - 220K
		if(vec2.size()!=0)arr.add(vec2); // Detecor A - 300K
		if(vec3.size()!=0)arr.add(vec3); // Detecor B - 300K
		return arr;
	}
	
	
	
	/*
	 * Level 1 A ENV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_ENV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1A_ENV(@RequestParam("targetDate") String targetDate, String dBegin,  String ENVType,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", ENVType);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectEnvData_L1A(hashmap);
		
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
//	@RequestMapping(value = "timeseries/retrieval/L_1_B_NVL", method=RequestMethod.GET)
//	@ResponseBody
////	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//	public ArrayList<Vector> selectMatchingData_NumberOfValidLandmarks(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//		
//		HashMap<String, String> hashmap = new HashMap<String, String>();
//		hashmap.put("targetDate", targetDate);
//		hashmap.put("dBegin", dBegin);
//		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_NVL(hashmap);
//		
//		
//		//ㅠ 
//		ArrayList<Vector> arr = new ArrayList<Vector>();
//		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
//		
//		for(HashMap<String,Object> row : results){
//			if(row.get("ROIID").toString().equals("1")){
//				vec1.add(row);
//			}else if(row.get("ROIID").toString().equals("2")){
//				vec2.add(row);
//			}else if(row.get("ROIID").toString().equals("3")){
//				vec3.add(row);
//			}else if(row.get("ROIID").toString().equals("4")){
//				vec4.add(row);
//			}else if(row.get("ROIID").toString().equals("5")){
//				vec5.add(row);
//			}
////			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
////		for(HashMap<String,Object> row : results){
////			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
//////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
////		}
////		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
//		return arr;
//	}
	
	/*
	 * 
	 * 2017-04-07 
	 * Level 1 B 품질지표의 경우 영역별 데이타 타임이 달라!!!!
	 * 
	 * Number of Valid Landmarks
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_B_NVL", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_NumberOfValidLandmarks(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_NVL(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
//		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	/* L_1_B_STDDEV
	 * L_1_B_STDDEV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_STDDEV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_STDDEV(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_STDDEV(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	/* L_1_B_QUADDIST
	 * L_1_B_QUADDIST
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_B_QUADDIST", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_QUADDIST(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_QUADDIST(hashmap);
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}

	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_RAVG", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_ResidualAvg(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_RAVG(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
		return arr;
	}
	
	
	
	
	/*
	@RequestMapping(value = "timeseries/retrieval/L_1_B_STDDEV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_STDDEV(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_STDDEV(hashmap);
		
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
	
	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_QUADDIST", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_QUADDIST(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_QUADDIST(hashmap);
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
	public ArrayList<Vector> selectMatchingData_ResidualAvg(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_RAVG(hashmap);
		
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
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	*/
	
	
	
	/*
	 * Level 1 B ENV Spacecraft Position (at image center)*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_SCPOS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_spacecraftPosition(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_SCPOS(hashmap);
		
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
	public ArrayList<Vector> selectMatchingData_spacecraftAttitude(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_SCATT(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
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
