package kr.go.nmsc.sat.qms.mybatis;

import kr.go.nmsc.sat.qms.domain.UpToDateStuffVO;

public interface MostRecentStuffMapper {
	/**
	 * Level_1_A_VisibleSNR + VisibleRadiance
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestStuff(String id);
	
	
	/**
	 * Level_1_A_IR_Radiance_Statistics
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestStuff_IRRS(String id);
	
	
	
	/**
	 * Level_1_A_VisiblePRNU
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestStuff_VisPRNU(String id);
	
	
	/**
	 * Level_1_A_ IR PRNU
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestStuff_IRPRNU(String id);
	
	
	/**
	 * Level_1_A_ IR NEDT
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestStuff_IRNEDT(String id);
	
	
	/**
	 * Level_1_B 
	 * Number of Valid Landmarks + Residual Avg(EW/NS)
	 * @param id
	 * @return UpToDateStuffVO
	 */
	public UpToDateStuffVO seekLatestOne(String id);
}
