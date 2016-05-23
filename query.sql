select * from tab;
select * from CPP_IMG_PRODUCT_T;
desc CPP_IMG_PRODUCT_T;

/**[DEPRECATED] pick most recent stuff*/
select * 
	from (select * from CPP_RADIODETPARAM_V order by IMGREFDT DESC)
	where ROWNUM =1;

	
	
/** pick most recent stuff(IMGREFDT)*/
select max(IMGREF) keep (dense_rank last order by IMGREFDT)
	from CPP_RADIODETPARAM_V
	where  Detector=1 and Channel=1 and Name='SNR'
 	and PID=1 and INSTRUMENTMODE=4; 
	
/** pick most recent stuff(lvl 1 b)*/
--select max(IMGREF) keep (dense_rank last order by IMGREFDT)
  	SELECT 
  		TO_CHAR(max(IMGREFDT) keep (dense_rank last order by IMGREFDT),'YYYY-MM-DD HH24:MI:SS') as lateststuff 
	FROM CPP_NAVPERFO_V
	WHERE IMGMODE=1;	

/** pick most recent stuff(IMGREFDT)*/
select max(IMGREF) keep (dense_rank last order by IMGREFDT)
	from CPP_RADIODETPARAM_V
	where  Detector=1 and Channel=1 and Name='RadianceMin'
 	and PID=1 and INSTRUMENTMODE=4; 
 	
/** [EXTENDED] pick most recent stuff(IMGREFDT)*/
select 
	max( name ) keep (dense_rank last order by IMGREFDT) meName, 
	max( Value ) keep (dense_rank last order by IMGREFDT) meVal,
	max( IMGREF ) keep (dense_rank last order by IMGREFDT) meDateString
	from CPP_RADIODETPARAM_V
	where  Detector=1 and Channel=1 and Name='RadianceMin'
 	and PID=1 and INSTRUMENTMODE=4; 

 	
 	
 	
--Level 1 A  (Visible SNR)
--Level 1 A  (Visible Radiance) 'RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD'
 	
     SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, VALUE, DETECTOR
		FROM CPP_RADIODETPARAM_V 
		WHERE ImgRef like '2015-11-17%'  	 
		AND Channel=1 AND Name='SNR' 
		AND Detector IN (0,1,2,3,4,5,6,7) 
		AND PID=1 
		AND INSTRUMENTMODE=4 
		ORDER BY dStr, detector	
 	
 	
 	
--Level 1 A  (Visible Radiance)
--Level 1 A  (Visible Radiance) 'RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD'
select TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as dStr, value ,name
	from CPP_RADIODETPARAM_V 
	where ImgRef like '2015-11-17%' 	 
	and Detector=1 
	and Channel=1 
	and Name IN ('RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD') 
	and PID=1 
	and INSTRUMENTMODE=4 
	order by dStr, name;


select TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as dStr, Value ,name from CPP_RADIODETPARAM_V where ImgRef like '2015-11-17%' 	 
	and Detector=1 and Channel=1 and Name='RadianceMin'
 	and PID=1 and INSTRUMENTMODE=4 
	UNION	
	select TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as dStr, Value ,name from CPP_RADIODETPARAM_V where ImgRef like '2015-11-17%' 	 
 	and Detector=1 and Channel=1 and Name='RadianceSTD'
 	and PID=1 and INSTRUMENTMODE=4 
 	order by dStr, name;
	
	
	--Level-1-B Number of Valid Landmarks
 	SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, ROIID, COUNT
		FROM CPP_NAVPERFO_V
		WHERE imgref LIKE '2013-08-09%'  	 
		AND IMGMODE = 1
		AND RoiID IN (1,2,3,4,5) 
		ORDER BY DSTR, RoiID;
 	
	--Level-1-B Landmark Residual-Average	
  	SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, ROIID, AverageEW, AverageNS
		FROM CPP_NAVPERFO_V
		WHERE imgref LIKE '2013-08-09%'  	 
		AND IMGMODE = 1
		AND RoiID IN (1,2,3,4,5) 
		ORDER BY DSTR, RoiID
 	
 	
 	