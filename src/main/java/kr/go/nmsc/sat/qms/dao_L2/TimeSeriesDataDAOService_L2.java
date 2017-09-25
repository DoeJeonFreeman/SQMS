package kr.go.nmsc.sat.qms.dao_L2;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.nmsc.sat.qms.mybatis_L2.TimeSeriesDataMapper_L2;


/**
 * @author Administrator
 *
 */

@Repository
public class TimeSeriesDataDAOService_L2  implements TimeSeriesDataDAO_L2{

	@Autowired 
	private SqlSession  sqlSession2;

//	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_CLA(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_CLA(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_CLD(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_CLD(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_FOG(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_FOG(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_FOG2(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_FOG2(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_AI(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_AI(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_RI(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_RI(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_SST(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_SST(hashmap);
	}
	
	
	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////
	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////
	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////
	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////
	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////	////////////////
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_AOD(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_AOD(hashmap);
	}

	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_INS(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_INS(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_LST(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_LST(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_OLR(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_OLR(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_OLR2(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_OLR2(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_OLR3(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_OLR3(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_OLR4(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_OLR4(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_SSI(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_SSI(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_SSI2(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_SSI2(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_TPW(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_TPW(hashmap);
	}
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_UTH(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_UTH(hashmap);
	}
	
	
}
