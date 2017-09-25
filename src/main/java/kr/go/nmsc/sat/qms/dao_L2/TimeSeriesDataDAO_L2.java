package kr.go.nmsc.sat.qms.dao_L2;

import java.util.ArrayList;
import java.util.HashMap;

public interface TimeSeriesDataDAO_L2 {
	
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLA(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLD(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_FOG(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_FOG2(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_AI (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_RI (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_SST (HashMap<String, String> hashmap);
	 
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_AOD (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_INS (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_LST (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_OLR (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_OLR2 (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_OLR3 (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_OLR4 (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_SSI (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_SSI2 (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_TPW (HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_UTH (HashMap<String, String> hashmap);
	 
}	 