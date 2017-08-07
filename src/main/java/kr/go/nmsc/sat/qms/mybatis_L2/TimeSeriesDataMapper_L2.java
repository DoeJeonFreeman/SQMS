package kr.go.nmsc.sat.qms.mybatis_L2;

import java.util.ArrayList;
import java.util.HashMap;

public interface TimeSeriesDataMapper_L2 {
    
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLA(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLD(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_FOG(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_FOG2(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_AI(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_RI(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_SST(HashMap<String, String> hashmap);
	 

    
}
