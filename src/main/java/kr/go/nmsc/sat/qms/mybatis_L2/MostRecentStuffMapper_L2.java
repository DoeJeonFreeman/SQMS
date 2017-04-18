package kr.go.nmsc.sat.qms.mybatis_L2;

import kr.go.nmsc.sat.qms.domain.MostRecentStuffVO;

public interface MostRecentStuffMapper_L2 {
	
	MostRecentStuffVO seekLatestStuff_L2Daily(String id);
	
}
