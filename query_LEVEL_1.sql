
/**do stuff..*/

--instruemntmode?
	SELECT id,instrument,name, count(*) from cpp_radio_param_type_t group by id, instrument, name;
	select instrumentmode,count(*) from cpp_img_product_t group by instrumentmode;
	
	
-- IMGREFDT가 각 Name마다 다를 줄 알고
         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, VALUE ,NAME
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector=1
             AND Channel=1
             AND Name IN ('RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD')
             AND PID=1
             AND INSTRUMENTMODE=4
             ORDER BY dStr, name
             
-- 근데 아님 시간은 모두 같음. 쿼리를 바꿔보자 
	
         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, 
         		max(case when Name = 'RadianceMin' then Value else null end) as Min, 
         		max(case when Name = 'RadianceMax' then Value else null end) as Max, 
         		max(case when Name = 'RadianceMean' then Value else null end) as Mean, 
         		max(case when Name = 'RadianceMedian' then Value else null end) as Median, 
         		max(case when Name = 'RadianceSTD' then Value else null end) as STD 
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector=1
             AND Channel=1
             AND Name IN ('RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD')
             AND PID=1
             AND INSTRUMENTMODE=4       and INSTRUMENT='V'
             GROUP BY IMGREFDT
             ORDER BY DSTR;

             
--             select distinct t1.id as ID,
--				(Select hours from table_1 As T3 where T3.id=t1.id and T3.method='A') as [Hours(A)],
--				(Select hours from table_1 As T4 where T4.id=t1.id and T4.method='B') as [Hours(B)]
--				from Table_1 as T1
				
             select  distinct p.imgref DDDMYD, p.instrumentmode,
             	 (Select paramvalue from cpp_radio_param_bag_t PTYPE7 where PTYPE7.imageproduct = p.id and PTYPE7.paramtype=7 and PTYPE7.channel=4 and PTYPE7.detector=1) as "PTYPE(7)",
             	 (Select paramvalue from cpp_radio_param_bag_t PTYPE30 where PTYPE30.imageproduct = p.id and PTYPE30.paramtype=30 and PTYPE30.channel=4 and PTYPE30.detector=1) as "PTYPE(30)"
				from cpp_img_product_t p
				where p.imgref like '2015-11-17%'
				and p.instrumentmode=4 
				and  p.platform=1 
				order by p.imgref ;

             select ipt.imgref,(bag.paramtype) as bpt, bag.detector, bag.paramvalue
				from cpp_radio_param_bag_t bag, cpp_img_product_t ipt
				where ipt.id = bag.imageproduct
				and bag.paramtype in (7,30) 
			--	and bag.paramtype in (7,30,8,28,31) 
				and ipt.instrumentmode=4 and bag.channel=4 and ipt.platform=1 and detector =1 
				and imgref like '2015-11-17%'
				order by ipt.imgref ;

				
				
		SELECT a.platform, a.imgrefdt, b.PARAMVALUE AS X, c.PARAMVALUE AS Y, b.DETECTOR, b.CHANNEL, a.INSTRUMENTMODE AS IMGMODE
		FROM CPP_IMG_PRODUCT_T a, CPP_RADIO_PARAM_BAG_T b, CPP_RADIO_PARAM_BAG_T c
		WHERE
		b.PARAMTYPE='7' AND c.PARAMTYPE = '30' AND a.ID = b.IMAGEPRODUCT AND b.IMAGEPRODUCT = c.IMAGEPRODUCT
		AND b.CHANNEL = c.CHANNEL AND b.DETECTOR = c.DETECTOR AND c.ParamValue < '5000.0' AND c.ParamValue > '-5000.0'

	
				
             select p.imgref , b.paramvalue, c.paramvalue
				from cpp_img_product_t p, CPP_RADIO_PARAM_BAG_T b, CPP_RADIO_PARAM_BAG_T c
				where b.paramtype=7 and c.paramtype=30
				and p.imgref like '2015-11-17%'
				and p.instrumentmode=4 and  p.platform=1 
				and b.detector =1  and b.channel=4 
				and p.id = b.imageproduct and b.imageproduct = c.imageproduct
				AND b.CHANNEL = c.CHANNEL AND b.DETECTOR = c.DETECTOR
				order by p.imgref ;
				
				
/** 
 * 		1. Visible Albedo Monitor Slope(로컬데이터없음!!!)
 */

select max(IMGREFDT) keep (dense_rank last order by IMGREFDT)
	from CPP_ALBEDO_T;

select albedoslope,count(*) from cpp_radio_param_t group by albedoslope;
select distinct albedoslope from cpp_radio_param_t;

--
--select count(*) , paramtype from cpp_radio_param_bag_t where imageproduct between 3445422 and 3446965 group by paramtype ;

--paramTYpe==1 이 Slope 임. instrument는 'V'  
-- 근데 sideNum이 없어!!!!!!!!!!!!!!!!!!!!!!!!!!!
	-- 내가 임시로 추가함 얘들은 맵퍼에 이프로 넣어 
	-- 채널은 1 , Instrumentmode==4, 플랫폼은 1 하자 그냥
select p.id, p.imgref, b.paramvalue, b.detector, t.instrument, p.instrumentmode, p.platform, b.paramtype, t.name, b.channel
	from cpp_radio_param_bag_t b, CPP_IMG_PRODUCT_T p, cpp_radio_param_type_t t 
	where p.id between 3445422 and 3446965 
	and b.paramtype=1 and t.instrument ='V' 
	and p.instrumentmode=4 and b.channel=1 and p.platform=1
	and detector IN (0)
	and p.id = b.imageproduct and t.id = b.paramtype;

	--sideNum 있는 애는 cpp_radio_param_t . 얘는 albedoSlope도 있다 얜가본데 허허
	--뷰가 있어!!! CPP_RadioImgParam_V
	--근데 FC_ToModeStr(i.InstrumentMode) AS InstrumentMode 땜에  해당 라인 펑션 날리고 DJF_RadioImgParam_V로 리네임!!!.
	
CREATE  or replace VIEW DJF_RadioImgParam_V AS
SELECT
i.ID AS ID,
p.ID AS PID,
i.ImgRef,
i.ImgRefDT,
i.InstrumentMode AS InstrumentMode,
r.SideNum,
r.PatchType,
r.VisNorRefDet,
r.IRNorRefDet,
r.VisNorflag,
r.IRNorflag,
r.MBCCRefDet,
r.AlbedoSlope,
r.ImagerResponse
FROM
CPP_IMG_PRODUCT_T i,
CPP_RADIO_PARAM_T r,
CPP_PLATFORM_T p
WHERE r.ImageProduct = i.ID AND i.Platform = p.ID
ORDER BY i.ImgRefDT

select * from djf_radioimgparam_v;
select * from cpp_radio_param_t;

	
	
	
/** 
 * 		2. Visible RPNU
 * 
 *    detector 0은 값이 죄다 0이네 paramType25는
 */

 	SELECT 
  		TO_CHAR(max(IMGREFDT) keep (dense_rank last order by IMGREFDT),'YYYY-MM-DD HH24:MI:SS') as lateststuff
		FROM CPP_RADIODETPARAM_V
		WHERE  Detector=1 and Channel=1
 		AND PID=1 and INSTRUMENTMODE=4
		AND TID=25



         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, detector,
         		max(case when TID = 25 then Value else null end) as VALUE 
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector between 0 and 7
             AND PID=1
             AND INSTRUMENTMODE=4
             AND INSTRUMENT='V'
             AND Channel=1
             AND TID IN (25)
             GROUP BY IMGREFDT,detector
             ORDER BY DSTR;	

             
select * 
	from cpp_radio_param_bag_t b, cpp_img_product_t i 
	where b.detector =0 
	and i.id = b.imageproduct 
	and i.ImgRef like '2015-11-17%' 
	and b.paramtype=24;





/** 
 * 		3. Visible Image Response ( Moon ) 
 */
select max(IMGREFDT) keep (dense_rank last order by IMGREFDT)
	from CPP_MOON_T;
	
	
	
/** 
 * 		4. IR Radiance Statistics 
 */
	
--latest stuff은 1번으로..2번 paramtype 들어간것도 아니고 속도만 떨어짐	

select max(IMGREFDT) keep (dense_rank last order by IMGREFDT) from CPP_IMG_PRODUCT_T; -- 2015.11.17. 23:58:22

--seek latest stuff 1   
 	SELECT 
  		TO_CHAR(max(IMGREFDT) keep (dense_rank last order by IMGREFDT),'YYYY-MM-DD HH24:MI:SS') as lateststuff
		FROM CPP_RADIODETPARAM_V
		WHERE  Detector=1 and Channel=4 
 		AND PID=1 and INSTRUMENTMODE=4
		AND TID=7;
--		and Name='SNR'

--seek latest stuff 2   
  	SELECT 
  		TO_CHAR(max(ip.IMGREFDT) keep (dense_rank last order by ip.IMGREFDT),'YYYY-MM-DD HH24:MI:SS') as lateststuff
		FROM CPP_IMG_PRODUCT_T ip, CPP_RADIO_PARAM_BAG_T rpb
		WHERE  ip.id = rpb.imageproduct
 		AND ip.instrumentmode=4 and rpb.channel=4 and ip.platform=1 and rpb.detector=0



select max(IMGREFDT) keep (dense_rank last order by IMGREFDT) 
	from CPP_IMG_PRODUCT_T p; -- 2015.11.17.
	
select count(*) from CPP_IMG_PRODUCT_T;	--22461

/*
 * paramType 7 == Slope
 * paramType 30 == RadianceSTD
 * paramType 8 == Intercept
 * paramType 28 == RadianceMean
 * paramType 31 == IR_PRNU_220k
 * */

select id,name, instrument from cpp_radio_param_type_t order by id asc;
select id,name from cpp_radio_param_type_t order by name asc; --name이 같은 애들이 있음!!!!!!
select (bag.paramtype) as bpt, typ.name, count(*) 
	from cpp_radio_param_bag_t bag, cpp_radio_param_type_t typ 
	where typ.id = bag.paramtype
	group by bag.paramtype, typ.name order by typ.name
	having bag.paramtype in (7,30,8,28,31);
--	select count(*) from cpp_radio_param_bag_t;

--select *
	SELECT ipt.imgref,(bag.paramtype) as bpt, bag.paramvalue, bag.detector, bag.channel, ipt.platform, ipt.instrumentmode
		FROM cpp_radio_param_bag_t bag, cpp_img_product_t ipt
		WHERE ipt.id = bag.imageproduct
		and imgref like '2015-11-17%'
		AND bag.paramtype in (7,8,28,30,31) 
		AND ipt.instrumentmode=4 and bag.channel=4 and ipt.platform=1 and detector =1 
		ORDER BY ipt.imgref, bpt ;
		
  	SELECT ipt.imgref,(bag.paramtype) as PID, bag.paramvalue, ptype.name as TYPENAME
		FROM cpp_radio_param_bag_t bag, cpp_img_product_t ipt, cpp_radio_param_type_t ptype
		WHERE ipt.id = bag.imageproduct AND bag.paramtype = ptype.id
		AND imgref LIKE '2015-11-17%' 	 
		AND bag.paramtype in (7,8,28,30,31) 
		AND ipt.instrumentmode=4 
		AND bag.channel=4 
		AND ipt.platform=1 
		AND detector = 0
	
	  
	--컨디션 어케함 디택터, 인스트루먼트, 채널, 플랫폼
      select p.imgref , b.paramvalue, c.paramvalue
				from cpp_img_product_t p, CPP_RADIO_PARAM_BAG_T b, CPP_RADIO_PARAM_BAG_T c
				where b.paramtype=7 and c.paramtype=30
				and p.imgref like '2015-11-17%'
				and p.instrumentmode=4 and  p.platform=1 
				and b.detector =1  and b.channel=4 
				and p.id = b.imageproduct and b.imageproduct = c.imageproduct
				AND b.CHANNEL = c.CHANNEL AND b.DETECTOR = c.DETECTOR
				order by p.imgref ;
	
	
	
	--컨디션 어케함 디택터, 인스트루먼트, 채널, 플랫폼
	    select  distinct p.imgref DDDMYD, p.instrumentmode,
             	 (Select paramvalue from cpp_radio_param_bag_t PTYPE7 where PTYPE7.imageproduct = p.id and PTYPE7.paramtype=7 and PTYPE7.channel=4 and PTYPE7.detector=1) as "PTYPE(7)",
             	 (Select paramvalue from cpp_radio_param_bag_t PTYPE30 where PTYPE30.imageproduct = p.id and PTYPE30.paramtype=30 and PTYPE30.channel=4 and PTYPE30.detector=1) as "PTYPE(30)"
				from cpp_img_product_t p
				where p.imgref like '2015-11-17%'
				and p.instrumentmode=4 
				and  p.platform=1 
				order by p.imgref ;
	
	
	
	
	/** 그냥 기존 상관관계 뿌려 젠장ㅋㅋㅋㅋㅋ*/
	/** 그냥 기존 상관관계 뿌려 젠장ㅋㅋㅋㅋㅋ*/
	/** 그냥 기존 상관관계 뿌려 젠장ㅋㅋㅋㅋㅋ*/
	/** 대표님 확인사항: instrumentmode별 X detetor 별 암튼 컨디션 두 개? 채널은 일단 고정 !!!!  */
	/** INSTRUMENT 값에 따라 IMAGEREF 시간이 다름!!!!!  이거 안됨!!! [time, val1, val2, val3, val4...] 
	 *  얘들은 기존처럼 where IN() clause 사용하거나 뷰 테이블 이용해야함!!!!! 뷰도 세개 각각 다름  ㅋㅋㅋㅋㅋ*/
	--  그리고 컨디션이 먼가 부족해서 디텍터, 채널, 플랫폼, 인스트루먼트, 데이트 추가함 ㅡ,.ㅡ 
	--  b.detector =0 and b.channel=2 and a.INSTRUMENTMODE =4 and a.platform =1 and a.imgref like '2015-11-17%' 
	
	SELECT a.platform, a.imgrefdt, b.PARAMVALUE AS X, c.PARAMVALUE AS Y, b.DETECTOR, b.CHANNEL, a.INSTRUMENTMODE AS IMGMODE
		FROM CPP_IMG_PRODUCT_T a, CPP_RADIO_PARAM_BAG_T b, CPP_RADIO_PARAM_BAG_T c
		WHERE
		b.PARAMTYPE='7' AND c.PARAMTYPE = '30' AND a.ID = b.IMAGEPRODUCT AND b.IMAGEPRODUCT = c.IMAGEPRODUCT
		AND b.CHANNEL = c.CHANNEL AND b.DETECTOR = c.DETECTOR AND c.ParamValue < '5000.0' AND c.ParamValue > '-5000.0'
		--아래는 내가 추가한 컨디션 
		and b.detector =0 and b.channel=2 and a.INSTRUMENTMODE =4 and a.platform =1 and a.imgref like '2015-11-17%'
		order by a.imgrefdt desc;

	
	
		
	
	
/** 
 * 		5 IR NEDT
 * 
 *   X  축은 날짜 시간
     Y  축은 NEDT 값 (channel, detector  별 그룹 )
     Table CPP_RADIO_PARAM_TYPE_T = a , CPP_RADIO_PARAM_BAG_T = b
     b의  ParamType = 31 검출소자간 PRNU 값 ??
     select ImageProduct, Channel, Detector, ParamValue from CPP_RADIO_PARAM_BAG_T where ParamType = ?? and 기간 주기 ??? group by channel ( detector ? )
     ImageProduct 가 날짜시간 인 것 같은데 확인해서 최근 것으로 또는 조건 준 것으로 조회 그려 줄 것.
     
     각 파라미터타입별로 파람벨류가 떨어지는데  파라미터 타입입 NEDT로 표출하면 되는지 여부(31번 검출소자간 PRNU는 뭐지 ㅠ)
      36 NEDT_220K          I
	  37 NEDT_300K          I

 * 
 */
		
	-- get latest stuff 	
 	SELECT 
  		TO_CHAR(max(IMGREFDT) keep (dense_rank last order by IMGREFDT),'YYYY-MM-DD HH24:MI:SS') as lateststuff
		FROM CPP_RADIODETPARAM_V
		WHERE  Detector=1 and Channel=4 
 		AND PID=1 and INSTRUMENTMODE=4
		AND TID=36
		
		
         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, detector, 			PID,INSTRUMENTMODE,Channel, 
         		max(case when TID = 36 then Value else null end) as VALUE 
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector between 0 and 7
             AND INSTRUMENT='I'
             AND TID IN (36)
             GROUP BY IMGREFDT,detector       											,PID,INSTRUMENTMODE,Channel
             ORDER BY DSTR;	
	
             
          SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, Channel, 		
       		max(case when TID = 36 then Value else null end) as VALUE 
           FROM CPP_RADIODETPARAM_V
           WHERE ImgRef like '2015-11-17%'       
           AND Detector = 1
           AND INSTRUMENT='I'
		   AND PID=1
           AND INSTRUMENTMODE=4
           AND Channel BETWEEN 2 AND 5
           AND TID IN (36)
           GROUP BY IMGREFDT,Channel       									
           ORDER BY DSTR, Channel	   
             
             
	
	
/** 
 * 		6 IR PRNU
 * 
 *  X  축은 날짜 시간
    Y축은 적외채널 화소간 반응 비균질성 ?  ???
    Table CPP_RADIO_PARAM_TYPE_T  = a , CPP_RADIO_PARAM_BAG_T = b
    b의  ParamType = 31 은 NEDR  일 때 ParamValue 값을  Y축으로 표출
 */

	
--detector 00이랑 01 외에 데이터 없음!!!!	게다가 디텍터00dms  값이 모두 0임. IR은 전부 디턱터가 0~1
         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, detector, 			PID,INSTRUMENTMODE,Channel, 
         		max(case when TID = 31 then Value else null end) as VALUE 
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector between 0 and 7
             AND INSTRUMENT='I'
             AND TID IN (31)
             GROUP BY IMGREFDT,detector       											,PID,INSTRUMENTMODE,Channel
             ORDER BY DSTR;	
         
         --Detector 0 ~ 1 (IR은 다 그런가)
         --PID 1 || 2   
         --INSTRUMENTMODE   1 || 4 
         --Channel은 1은 없고!!!! 2 ~ 5 
         SELECT TO_CHAR(IMGREFDT, 'YYYY-MM-DD HH24:MI:SS')as DSTR, detector, 		
         		max(case when TID = 31 then Value else null end) as VALUE 
             FROM CPP_RADIODETPARAM_V
             WHERE ImgRef like '2015-11-17%'      
             AND Detector between 0 and 7
             AND INSTRUMENT='I'
	 		 AND PID=1
		     AND INSTRUMENTMODE=4
             AND Channel=4
             AND TID IN (31)
             GROUP BY IMGREFDT,detector       									
             ORDER BY DSTR;	

	

		
		

		
		
		
	

	
	select dbms_metadata.get_ddl('VIEW', 'CPP_RADIODETPARAM_V') from dual;
	
	SELECT text
		FROM    user_views
		WHERE  view_name = 'CPP_RADIODETPARAM_V'
	
	SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE IN ('FUNCTION','PROCEDURE','PACKAGE');
	SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE IN ('FUNCTION');
	SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE IN ('PROCEDURE');
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/** 2016-04-26 위성센터 쿼리리절트 인서트쿼리로 익스포트한거  */	
/** 2016-04-26 위성센터 쿼리리절트 인서트쿼리로 익스포트한거  */	
/** 2016-04-26 위성센터 쿼리리절트 인서트쿼리로 익스포트한거  */	
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
-- CPP_ALBEDO_T has only two records	
Insert into PAM.CPP_ALBEDO_T
   (IMGREFDT, SIDENUM, DET0, DET1, DET2, 
    DET3, DET4, DET5, DET6, DET7)
 Values
   (TO_TIMESTAMP('2010/08/22 21:44:21.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 1, -0.655002479093647, -0.661629366676065, -0.652364186196534, 
    -0.656421629646098, -0.641314345010521, -0.677946250207181, -0.651300188388228, -0.648510561097116);
    
Insert into PAM.CPP_ALBEDO_T
   (IMGREFDT, SIDENUM, DET0, DET1, DET2, 
    DET3, DET4, DET5, DET6, DET7)
 Values
   (TO_TIMESTAMP('2010/08/25 21:38:36.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 1, 3.6E-16, 1.8E-16, 1.8E-16, 
    1.8E-16, 1.8E-16, 3.5E-16, 1.8E-16, 1.8E-16);

-- CPP_MOON_T 16Rows
-- CPP_MOON_T 16Rows
-- CPP_MOON_T 16Rows
-- 어차피 해당 테이블은 데이터도 테스트 데이터 옛날꺼 16개 밖에 없어 사용안할거 같은데.. 암튼 SIDE랑 PATCH 컬럼 없음

  DROP TABLE "PAM"."CPP_MOON_T" CASCADE CONSTRAINTS;  
  CREATE TABLE "PAM"."CPP_MOON_T"(    
	 "IMGREFDT" TIMESTAMP (6),                                                 
     "SLOPEFACTOR" NUMBER(38,16) DEFAULT 0,                                        
     "SIDE" NUMBER(1,0),                                                           
     "PATCH" NUMBER(1,0)
  )
  
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/09/03 4:43:12.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9780215603, 0, 0);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2010/08/24 3:15:23.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 1.02600633, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2010/08/25 2:45:22.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 14.10609666, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/01/12 5:13:13.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9818170474, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/05/04 1:58:24.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9547032247, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/01/12 6:28:23.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9558220398, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/02/08 3:13:13.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9568062736, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/02/08 3:58:22.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 1.295315986, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/03/07 1:43:18.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.944333387, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/03/07 2:58:23.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9540240026, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/04/06 2:13:13.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9528918, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/04/06 3:28:23.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9603577844, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/05/04 0:58:24.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9477062406, NULL, NULL);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/06/09 7:13:12.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9994831631, 0, 0);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2011/02/18 2:45:22.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.9725843491, 0, 0);
Insert into PAM.CPP_MOON_T
   (IMGREFDT, SLOPEFACTOR, SIDE, PATCH)
 Values
   (TO_TIMESTAMP('2012/10/27 0:28:24.000000','YYYY/MM/DD fmHH24fm:MI:SS.FF'), 0.607344968, 0, 0);

   select count(*) from CPP_RADIO_ENV_BAG_T;
-- CPP_RADIO_ENV_BAG_T  는 파일 query_LEVEL_1_CPP_RADIO_ENV_BAG_T에 있음 
-- CPP_RADIO_ENV_BAG_T  
-- IMAGEPRODUCT 값은 2015년 11월 17일 하루 데이터(WHERE IMAGEPRODUCT BETWEEN 3445422 AND 3446965)   
-- IMAGEPRODUCT 값은 2015년 11월 17일 하루 데이터(WHERE IMAGEPRODUCT BETWEEN 3445422 AND 3446965)   