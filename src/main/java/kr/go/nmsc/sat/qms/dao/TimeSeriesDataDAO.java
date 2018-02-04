package kr.go.nmsc.sat.qms.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface TimeSeriesDataDAO {
    
	// 14
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_MoonSlopeFactor(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VSNR(HashMap<String, String> hashmap);
	 
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VSNR_Alternative(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VR(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRRS(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VisPRNU(HashMap<String, String> hashmap);
	 
	 public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRPRNU(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRNEDT(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String, Object>> selectEnvData_L1A(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_NVL(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_RAVG(HashMap<String, String> hashmap);
	 
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_STDDEV(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_QUADDIST(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_SCPOS(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_SCATT(HashMap<String, String> hashmap);
}
