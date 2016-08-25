package kr.go.nmsc.sat.qms.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.nmsc.sat.qms.domain.TimeSeriesDataVO;
import kr.go.nmsc.sat.qms.domain.UpToDateStuffVO;
import kr.go.nmsc.sat.qms.mybatis.MostRecentStuffMapper;
import kr.go.nmsc.sat.qms.mybatis.TimeSeriesDataMapper;


/**
 * @author Administrator
 *
 */
@Service("chartService")
public class TimeSeriesChartServiceImpl  implements TimeSeriesChartService{

	@Autowired 
	MostRecentStuffMapper  mostRecentStuffPicker;

	@Autowired 
	TimeSeriesDataMapper  seriesDataMapper;
	
	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	
	//LEVEL 1 A (init)
	public UpToDateStuffVO pickMostRecentStuff_L1A(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1A() id is :" + id);
		return mostRecentStuffPicker.seekLatestStuff(id);
	}
	
	//LEVEL 1 A IRRS (init)
	public UpToDateStuffVO pickMostRecentStuff_L1A_IRRS(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1A_IRRS() id is" + id);
		return mostRecentStuffPicker.seekLatestStuff_IRRS(id);
	}
	
	//LEVEL 1 A Visble PRNU (init)
	public UpToDateStuffVO pickMostRecentStuff_L1A_VisPRNU(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1A_VisPRNU() id is" + id);
		return mostRecentStuffPicker.seekLatestStuff_VisPRNU(id);
	}
	
	//LEVEL 1 A IR PRNU (init)
	public UpToDateStuffVO pickMostRecentStuff_L1A_IRPRNU(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1A_IRPRNU()");
		return mostRecentStuffPicker.seekLatestStuff_IRPRNU(id);
	}
	
	//LEVEL 1 A IR_NEDT (init)
	public UpToDateStuffVO pickMostRecentStuff_L1A_IRNEDT(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1A_IRNEDT()");
		return mostRecentStuffPicker.seekLatestStuff_IRNEDT(id);
	}
	
	
	
	
	
	//LEVEL 1 B (init)
	public UpToDateStuffVO pickMostRecentStuff_L1B(String id) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.pickMostRecentStuff_L1B() id is :" + id);
		return mostRecentStuffPicker.seekLatestOne(id);
	}
	
	

	
	//LEVEL 1 A Visible SNR
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_VSNR(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1A_VSNr(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1A_VSNR_Alternative(hashmap);
	}
	
	//LEVEL 1 A Visible Radiance
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_VR(String targetDate, String period, String detector) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1A_VR(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("detector", detector);
		return seriesDataMapper.selectTimeSeriesData_L1A_VR(hashmap);
	}
	
	//LEVEL 1 A IR Radiance Statistics
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_IRRS(String targetDate, String period, String detector) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1A_IRRS(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("detector", detector);
		return seriesDataMapper.selectTimeSeriesData_L1A_IRRS(hashmap);
	}
	
	//LEVEL 1 A Visible PRNU
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_VisPRNU(String targetDate, String period, String detector) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1A_VisPRNU(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("detector", detector);
		return seriesDataMapper.selectTimeSeriesData_L1A_VisPRNU(hashmap);
	}
	
	//LEVEL 1 A IR PRNU
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_IRPRNU(String targetDate, String period, String detector) throws Exception {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("detector", detector);
		return seriesDataMapper.selectTimeSeriesData_L1A_IRPRNU(hashmap);
	}
	
	//LEVEL 1 A IR NEDT
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_IRNEDT(String targetDate, String period, String detector) throws Exception {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("detector", detector);
		return seriesDataMapper.selectTimeSeriesData_L1A_IRNEDT(hashmap);
	}
	
	
	//LEVEL 1 A ENV
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1A_ENV(String targetDate, String period, String varType) throws Exception {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		hashmap.put("varType", varType);
		return seriesDataMapper.selectEnvData_L1A(hashmap);
	}
	
	
	
	
	
	//LEVEL 1 B number of valid landmarks (onLoadComplete)
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_NVL(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_VNL(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_NVL(hashmap);
	}
	
	//LEVEL 1 B Residual Avg (onLoadComplete)
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_RAVG(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_RAVG(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_RAVG(hashmap);
	}
	
	//LEVEL 1 B QI Residual Standard Deviation
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_STDDEV(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_STDDEV(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_STDDEV(hashmap);
	}
	
	//LEVEL 1 B QI Residual Quadratic 
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_QUADDIST(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_QUADDIST(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_QUADDIST(hashmap);
	}
	
	//LEVEL 1 B EV Spacecraft Position
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_SCPOS(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_SCPOS(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_SCPOS(hashmap);
	}
	
	//LEVEL 1 B EV Spacecraft Attitude
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B_SCATT(String targetDate, String period) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B_SCATT(targetDate) targetDate: " + targetDate);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", period);
		return seriesDataMapper.selectTimeSeriesData_L1B_SCATT(hashmap);
	}
/*	//LEVEL 1 B number of valid landmarks (onLoadComplete)
	public ArrayList<HashMap<String, Object>> getSeriesRetrieval_L1B(String menuId, String submenuId) throws Exception {
		System.out.println("TimeSeriesChartServiceImpl.getSeriesRetrieval_L1B(menuId, submenuId)  menu: " + menuId + " / submenu: " + submenuId);
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("menuId", menuId);
		hashmap.put("submenuId", submenuId);
		return seriesDataMapper.selectTimeSeriesData_L1B(hashmap);
	}
*/	
	
	
	/////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////
	
	
	
	/*
	
	
	
	public UpToDateStuffVO selectLatestStuff(String id) throws Exception {
		return mostRecentStuffPicker.seekLatestOne(id);
	}

	
	public MostRecentStuffVO retrievingIfArcticDataExists() throws Exception {
		return seriesDataMapper.retrieveOneArcticData();
	}
	
	
	public MostRecentStuffVO findMatchingArcticData(String givenDateStr) throws Exception {
		
		String weekAgo = CAL_DATE_FORMAT.format(DateUtils.addDays(CAL_DATE_FORMAT.parse(givenDateStr), -6));
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("dateSelected", givenDateStr);
		hashmap.put("weekAgo", weekAgo);
		return seriesDataMapper.retrieveMatchingArcticData(hashmap);
	}
	
	
	
	public List<MostRecentStuffVO> findMatchingArcticDataList(String givenDateStr) throws Exception {
		
		String beginDate = CAL_DATE_FORMAT.format(DateUtils.addMonths(CAL_DATE_FORMAT.parse(givenDateStr), -2));
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("dBegin", beginDate);
		hashmap.put("dEnd", givenDateStr);
		
		return seriesDataMapper.retrieveMatchingArcticDataList(hashmap);
	}
	*/


	public void getExtentRoughnessGraphic() throws Exception {
		// TODO Auto-generated method stub
	}

	public TimeSeriesDataVO selectIceExtentSeries() throws Exception {
		return null;
	}

	public TimeSeriesDataVO selectIceTrendSeries() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public TimeSeriesDataVO selectTimeseriesAndSDistGraphic() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
