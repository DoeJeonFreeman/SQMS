package kr.go.nmsc.sat.qms.service;

import java.util.ArrayList;
import java.util.HashMap;

import kr.go.nmsc.sat.qms.domain.UpToDateStuffVO;

public interface TimeSeriesChartService {
	
	//haha
	UpToDateStuffVO pickMostRecentStuff_L1A(String id) throws Exception;
	UpToDateStuffVO pickMostRecentStuff_L1A_IRRS(String id) throws Exception;
	UpToDateStuffVO pickMostRecentStuff_L1A_VisPRNU(String id) throws Exception;
	UpToDateStuffVO pickMostRecentStuff_L1A_IRPRNU(String id) throws Exception;
	UpToDateStuffVO pickMostRecentStuff_L1A_IRNEDT(String id) throws Exception;
	UpToDateStuffVO pickMostRecentStuff_L1B(String id) throws Exception;
	
	//Level 1 A V_SNR V_R
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_VSNR (String targetDate, String period) throws Exception;
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_VR (String targetDate, String period,String detector) throws Exception;
	
	//Level 1 A IR_Radiance_Statistics   
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_IRRS (String targetDate, String period, String detector) throws Exception;
	
	//Level 1 A VIS_PRNU   
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_VisPRNU (String targetDate, String period, String detector) throws Exception;
	
	//Level 1 A IR_PRNU   
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_IRPRNU (String targetDate, String period, String detector) throws Exception;
	
	//Level 1 A IR_NEDT   
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_IRNEDT (String targetDate, String period, String detector) throws Exception;
	
	//Level 1 A ENV
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1A_ENV (String targetDate, String period, String varType) throws Exception;
	
	//Level 1 B QI
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_NVL (String targetDate, String period ) throws Exception;
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_RAVG (String targetDate, String period) throws Exception;
	
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_STDDEV (String targetDate, String period) throws Exception;
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_QUADDIST (String targetDate, String period) throws Exception;
	
	//Level 1 B ENV
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_SCPOS (String targetDate, String period) throws Exception;
	ArrayList<HashMap<String,Object>> getSeriesRetrieval_L1B_SCATT (String targetDate, String period) throws Exception;
	
//	MostRecentStuffVO retrievingIfArcticDataExists() throws Exception;
//	MostRecentStuffVO findMatchingArcticData (String selectedDate) throws Exception;
//	List<MostRecentStuffVO> findMatchingArcticDataList (String selectedDate) throws Exception;
//	TimeSeriesDataVO selectIceExtentSeries() throws Exception;
//	TimeSeriesDataVO selectIceTrendSeries() throws Exception;
}



