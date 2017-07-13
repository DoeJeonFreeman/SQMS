<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- Include Fancytree skin and library -->
	<!--os x.7 
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-bootstrap/ui.fancytree.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-lion/ui.fancytree.min.css" rel="stylesheet">
	 -->
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-xp/ui.fancytree.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree-all.min.js"></script>	
	<!-- 
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.glyph.js"></script>	
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.wide.js"></script>	
	 -->
	<!-- Initialize the tree when page is loaded -->
	
	<style>
		ul.fancytree-container{
			font-size: 13px;
		}
		
		ul.fancytree-container {
	    	background-color: transparent;
   			border: none;
		}
		
	    .fancytree-selected span.fancytree-title {
		    color: #555555;
		    font-style: italic;
		}
	</style>
	<script type="text/javascript">
		
	 	var glyph_opts = {
		    map: {
		      doc: "",
		      docOpen: "",
		      checkbox: "glyphicon glyphicon-unchecked",
		      checkboxSelected: "glyphicon glyphicon-check",
		      checkboxUnknown: "glyphicon glyphicon-share",
		      dragHelper: "glyphicon glyphicon-play",
		      dropMarker: "glyphicon glyphicon-arrow-right",
		      error: "glyphicon glyphicon-warning-sign",
		      expanderClosed: "glyphicon glyphicon-menu-right",
		      expanderLazy: "glyphicon glyphicon-menu-right",  // glyphicon-plus-sign
		      expanderOpen: "glyphicon glyphicon-menu-down",  // glyphicon-collapse-down
		      folder: "glyphicon glyphicon-folder-close",
//		      folder: "fa fa-folder-o",
		      folderOpen: "glyphicon glyphicon-folder-open",
		      loading: "glyphicon glyphicon-refresh glyphicon-spin"
		    }
	  	};
	
	
		$(function(){
			
			  var treeData = [
							{title: "대기운동벡터 (AMV)", folder: true, hideCheckbox:true, expanded: true,
							    children: [
							      {title: "Statistical Map", folder: true, hideCheckbox:true,
							        children: [
								      // IR - Statistical Map - AMV vs. Sonde(IR1)		
							       	  // IR - Statistical Map - AMV vs. Sonde(IR1)		
							       	  // IR - Statistical Map - AMV vs. Sonde(IR1)	         
								      {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [//0
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f10200" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f10300" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f10001" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f10201" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f10401" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(EBBT)_RMSVD" , mePath:"amv_ir1_m_f10301" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f10002" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f10202" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f10302" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f10302" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f10003" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f10203" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f10403" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f10303" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(All)_Number", mePath:"amv_ir1_m_f10010" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f10210" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f10410" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f10310" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f10011" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f10211" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f10411" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(EBBT)_RMSVD" , mePath:"amv_ir1_m_f10311" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f10012" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f10212" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f10412" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f10312" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f10013" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f10213" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f10413" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_High-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f10313" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(All)_Number", mePath:"amv_ir1_m_f10020" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f10220" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f10420" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f10320" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f10021" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f10221" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f10421" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(EBBT)_RMSVD" , mePath:"amv_ir1_m_f10321" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f10022" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f10222" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f10422" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f10322" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f10023" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f10223" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f10423" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Mid-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f10323" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(All)_Number", mePath:"amv_ir1_m_f10030" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f10230" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f10430" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f10330" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f10031" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f10231" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f10431" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(EBBT)_RMSVD" , mePath:"amv_ir1_m_f10331" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f10032" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f10232" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f10432" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f10332" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f10033" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f10233" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f10433" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_Low-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f10333" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},
							        
								      // IR - Statistical Map - AMV vs. Sonde(SWIR)		
							       	  // IR - Statistical Map - AMV vs. Sonde(SWIR)		
							       	  // IR - Statistical Map - AMV vs. Sonde(SWIR)	
								      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_All-Height_H-A(All)_Number", mePath:"amv_swir_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_All-Height_H-A(All)_Bias" ,  mePath:"amv_swir_m_f10200" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_All-Height_H-A(All)_MVF" ,   mePath:"amv_swir_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_All-Height_H-A(All)_RMSVD" , mePath:"amv_swir_m_f10300" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_High-Height_H-A(All)_Number", mePath:"amv_swir_m_f10010" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_High-Height_H-A(All)_Bias" ,  mePath:"amv_swir_m_f10210" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_High-Height_H-A(All)_MVF" ,   mePath:"amv_swir_m_f10410" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_High-Height_H-A(All)_RMSVD" , mePath:"amv_swir_m_f10310" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Mid-Height_H-A(All)_Number", mePath:"amv_swir_m_f10020" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Mid-Height_H-A(All)_Bias" ,  mePath:"amv_swir_m_f10220" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Mid-Height_H-A(All)_MVF" ,   mePath:"amv_swir_m_f10420" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Mid-Height_H-A(All)_RMSVD" , mePath:"amv_swir_m_f10320" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Low-Height_H-A(All)_Number", mePath:"amv_swir_m_f10030" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Low-Height_H-A(All)_Bias" ,  mePath:"amv_swir_m_f10230" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Low-Height_H-A(All)_MVF" ,   mePath:"amv_swir_m_f10430" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(SWIR)_Low-Height_H-A(All)_RMSVD" , mePath:"amv_swir_m_f10330" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
								      
							       	  // IR - Statistical Map - AMV vs. Sonde(VIS)		
							       	  // IR - Statistical Map - AMV vs. Sonde(VIS)		
							       	  // IR - Statistical Map - AMV vs. Sonde(VIS)		
								      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_All-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_High-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Mid-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(EBBT)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(EBBT)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(EBBT)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(STC)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(STC)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(STC)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(STC)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(IR/WV)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(IR/WV)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(IR/WV)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
														          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(VIS)_Low-Height_H-A(IR/WV)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
														  ]}
														        
									      ]}
								        
								      ]},//////////////////3
							        
								      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
									     
								        
								      ]},//////////////////4
							        
								      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////5
							        
								      {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 6 
							        
								      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////7
							        
								      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////8
							        
								      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////9
							        
								      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////10
							        
								      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////11
							        
								      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////12
							        
							      ]},
							      
							      {title: "Density Plot", folder: true, hideCheckbox:true,
							        children: [//
								      {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number",   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" ,mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 1
							        
								      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////2
							        
								      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////3
							        
								      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////4
							        
								      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////5
							        
								      {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 6 
							        
								      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////7
							        
								      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////8
							        
								      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////9
							        
								      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////10
							        
								      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////11
							        
								      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////12
							        
							      ]},
							      {title: "Bar Plot 1", folder: true, hideCheckbox:true,
							        children: [//
								      {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 1
							        
								      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////2
							        
								      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////3
							        
								      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////4
							        
								      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////5
							        
								      {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 6 
							        
								      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////7
							        
								      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////8
							        
								      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////9
							        
								      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////10
							        
								      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////11
							        
								      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////12
							        
							      ]},
							      {title: "Bar Plot 2", folder: true, hideCheckbox:true,
							        children: [//
								      {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 1
							        
								      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////2
							        
								      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////3
							        
								      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////4
							        
								      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////5
							        
								      {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},////////////////// 6 
							        
								      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////7
							        
								      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},//////////////////8
							        
								      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////9
							        
								      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////10
							        
								      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////11
							        
								      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
											          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},//////////////////12
							        
							      ]},
							      
							      
							      {title: "Zonal Plot", folder: true, hideCheckbox:true, expanded: false,
				                    children: [
				                      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Number", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "Bias", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "MVD", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "RMSVD", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"ai_zzz_m_f32910", abbr:"AI"  }
				                        ]
				                      },
				                      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Number", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "Bias", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "MVD", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "RMSVD", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"ai_zzz_m_f32910", abbr:"AI"  }
				                        ]
				                      },
				                      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Number", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "Bias", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "MVD", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "RMSVD", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"ai_zzz_m_f32910", abbr:"AI"  }
				                        ]
				                      },
				                      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Number", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "Bias", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "MVD", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
				                          {title: "RMSVD", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"ai_zzz_m_f32910", abbr:"AI"  }
				                        ]
				                      },
				                      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare-MODIS", key: "AI_Daily-Trend_Compare-MODIS", mePath:"ai_zzz_m_f42300", abbr:"AI"  },
				                          {title: "Compare OMI", key: "AI_Daily-Trend_Compare-OMI" , 	mePath:"ai_zzz_m_f42310", abbr:"AI" }
				                        ]
				                      },
				                      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare-MODIS", key: "AI_Monthly-Trend_Compare-MODIS", mePath:"ai_zzz_y_f42300", abbr:"AI"  },
				                          {title: "Compare OMI", key: "AI_Monthly-Trend_Compare-OMI" , 	  mePath:"ai_zzz_y_f42310", abbr:"AI" }
				                        ]
				                      }
				                    ]
				                  },
					                  
							      
							      
							      {title: "Monthly Trend", folder: true, hideCheckbox:true,
								        children: [//
									      {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},////////////////// 1
								        
									      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]}
									        
									      ]},//////////////////2
								        
									      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////3
								        
									      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////4
								        
									      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////5
								        
									      {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},////////////////// 6 
								        
									      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////7
								        
									      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
										      ]}
									        
									      ]},//////////////////8
								        
									      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////9
								        
									      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////10
								        
									      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////11
								        
									      {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Number", mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "Bias",  key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_Bias" ,  mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "MVF",   key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_MVF" ,   mePath:"amv_ir1_m_f" , abbr:"AMV"}
												          ,{title: "RMSVD", key: "AMV_Statistical-Map_AMV vs. Sonde(IR1)_All-Height_H-A(All)_RMSVD" , mePath:"amv_ir1_m_f" , abbr:"AMV"}
												  ]}
															        
										      ]}
									        
									      ]},//////////////////12
								        
								      ]}
							      
							      
							    ]
							  },
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  /////////////////////////////////////////////////////////////////////////////////////////
			                  {title: "황사 탐지 (AI)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Scatter Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"ai_zzz_m_f32900", abbr:"AI" },
			                          {title: "Compare OMI", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"ai_zzz_m_f32910", abbr:"AI"  }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Daily-Trend_Compare-MODIS", mePath:"ai_zzz_m_f42300", abbr:"AI"  },
			                          {title: "Compare OMI", key: "AI_Daily-Trend_Compare-OMI" , 	mePath:"ai_zzz_m_f42310", abbr:"AI" }
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Monthly-Trend_Compare-MODIS", mePath:"ai_zzz_y_f42300", abbr:"AI"  },
			                          {title: "Compare OMI", key: "AI_Monthly-Trend_Compare-OMI" , 	  mePath:"ai_zzz_y_f42310", abbr:"AI" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "에어로졸 광학두께 (AOD)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statistical Map", folder: true, hideCheckbox:true,
			                        children: [
										{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "Number", key: "AOD_Statistical-Map_Compare-MODIS_Number", 	   mePath:"aod_zzz_m_f10000", abbr:"AOD"  },
										      {title: "Bias", key: "AOD_Statistical-Map_Compare-MODIS_Bias", 	   mePath:"aod_zzz_m_f10200", abbr:"AOD"  },
										      {title: "RMSE", key: "AOD_Statistical-Map_Compare-MODIS_RMSE" , mePath:"aod_zzz_m_f10300", abbr:"AOD" }
										    ]
										  }
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "AOD_Density-Plot_Compare-MODIS" , 	mePath:"aod_zzz_m_f20000", abbr:"AOD" }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "AOD_Daily-Trend_Compare-MODIS" , 	mePath:"aod_zzz_m_f42000", abbr:"AOD" }
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "AOD_Monthly-Trend_Compare-MODIS" , 	  mePath:"aod_zzz_y_f42000", abbr:"AOD" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "운량 (CA)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statistical Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Statistical-Map_Compare-GTS", 	   mePath:"ca_zzz_m_f10200", abbr:"CA"  },
			                          {title: "Compare Ground", key: "CA_Statistical-Map_Compare-Ground" , mePath:"ca_zzz_m_f10210", abbr:"CA" }
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Density-Plot_Compare-GTS" , 		mePath:"ca_zzz_m_f20000" , abbr:"CA"},
			                          {title: "Compare Ground", key: "CA_Density-Plot_Compare-Ground" , mePath:"ca_zzz_m_f20010" , abbr:"CA"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Daily-Trend_Compare-GTS" , 	   mePath:"ca_zzz_m_f42000" , abbr:"CA"},
			                          {title: "Compare Ground", key: "CA_Daily-Trend_Compare-Ground" , mePath:"ca_zzz_m_f42010" , abbr:"CA"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Monthly-Trend_Compare-GTS" , 		 mePath:"ca_zzz_y_f42000" , abbr:"CA"},
			                          {title: "Compare Ground", key: "CA_Monthly-Trend_Compare-Ground" , mePath:"ca_zzz_y_f42010" , abbr:"CA"}
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "위성 관측 운량 (CF)", folder: true, hideCheckbox:true, expanded: true,
				                    children: [
				                      {title: "Statistical Map", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS", key: "CF_Statistical-Map_Compare-MODIS" , 	mePath:"cf_zzz_m_f10200", abbr:"CF" }
				                        ]
				                      },
				                      {title: "Daily Trend", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "All Lat.", key: "CF_Daily-Trend_Compare-MODIS_All-Latitudes", 	   mePath:"cf_zzz_m_f42000", abbr:"CF"  },
										      {title: "Tropical Lat.", key: "CF_Daily-Trend_Compare-MODIS_Tropical-Latitudes", 	   mePath:"cf_zzz_m_f42001", abbr:"CF"  },
										      {title: "Middle Lat.", key: "CF_Daily-Trend_Compare-MODIS_Middle-Latitudes" , mePath:"cf_zzz_m_f42002", abbr:"CF" }
										    ]
										  }
				                        ]
				                      },
				                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "All Lat.", key: "CF_Monthly-Trend_Compare-MODIS_All-Latitudes", 	   mePath:"cf_zzz_y_f42000", abbr:"CF"  },
										      {title: "Tropical Lat.", key: "CF_Monthly-Trend_Compare-MODIS_Tropical-Latitudes",   mePath:"cf_zzz_y_f42001", abbr:"CF"  },
										      {title: "Middle Lat.", key: "CF_Monthly-Trend_Compare-MODIS_Middle-Latitudes" , mePath:"cf_zzz_y_f42002", abbr:"CF" }
										    ]
										  }
				                        ]
				                      }
				                    ]
				                  },
			                  {title: "구름 탐지(CLD)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Scatter Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "CLD_Scatter-Plot_Compare-MODIS" , mePath:"cld_zzz_m_f32900", abbr:"CLD" }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "CLD_Daily-Trend_Compare-MODIS" , mePath:"cld_zzz_m_f42100" , abbr:"CLD"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS", key: "CLD_Monthly-Trend_Compare-MODIS" , mePath:"cld_zzz_y_f42100" , abbr:"CLD"}
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "구름 광학 두께 (COT)", folder: true, hideCheckbox:true, expanded: true,
				                    children: [
				                      {title: "Statistical Map", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS", key: "COT_Statistical-Map_Compare-MODIS" , 	mePath:"cot_zzz_m_f10200", abbr:"COT" }
				                        ]
				                      },
				                      {title: "Daily Trend", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS", key: "COT_Daily-Trend_Compare-MODIS" , 	mePath:"cot_zzz_m_f42000", abbr:"COT" }
				                        ]
				                      },
				                      {title: "Frequency Distribution", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "COT", key: "COT_Frequency-Distribution_Compare-MODIS_COT", 	   mePath:"cot_zzz_m_f45500", abbr:"COT"  },
										      {title: "COMS_MODIS COT", key: "COT_Frequency-Distribution_Compare-MODIS_COMS-MODIS-COT" , mePath:"cot_zzz_m_f45501", abbr:"COT" }
										    ]
										  }
				                        ]
				                      },
				                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS", key: "COT_Monthly-Trend_Compare-MODIS" , 	mePath:"cot_zzz_y_f42000", abbr:"COT" }
				                        ]
				                      }
		                    	]
			                  },
			                  
			                  //fog goes here
     			       	  	  {title: "안개 (FOG)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statistical Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Statistical-Map_Compare-GTS", 		mePath:"fog_zzz_m_f11600" , abbr: "FOG"},
			                          {title: "Compare Ground", key: "FOG_Statistical-Map_Compare-Ground" , mePath:"fog_zzz_m_f11610" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Density-Plot_Compare-GTS" , 		 mePath:"fog_zzz_m_f32900" , abbr: "FOG"},
			                          {title: "Compare Ground", key: "FOG_Density-Plot_Compare-Ground" , mePath:"fog_zzz_m_f32910" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Daily-Trend_Compare-GTS", 		mePath:"fog_zzz_m_f42500" , abbr: "FOG"},
			                          {title: "Compare Ground", key: "FOG_Daily-Trend_Compare-Ground" , mePath:"fog_zzz_m_f42510" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Monthly-Trend_Compare-GTS" , 	  mePath:"fog_zzz_y_f42500" , abbr: "FOG"},
			                          {title: "Compare Ground", key: "FOG_Monthly-Trend_Compare-Ground" , mePath:"fog_zzz_y_f42510" , abbr: "FOG"}
			                        ]
			                      }
			                    ]
			                  }
	
			                  //fog goes here
			                  
			                  
			                ];
			
	   		
		    $("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree({
		    	 //extensions: ["glyph", "wide"],
		         //glyph: glyph_opts,
		         //wide: {
		         //  iconWidth: "5px",     // Adjust this if @fancy-icon-width != "16px"
		         //  iconSpacing: "10px", // Adjust this if @fancy-icon-spacing != "3px"
		         //  levelOfs: "18px"     // Adjust this if ul padding != "16px"
		         //}, 
		    	 connectors:true,
		    	 //checkbox: true,
		         debugLevel: 0, // 0:quiet, 1:normal, 2:debug
		         selectMode: 2,   // 1:single, 2:multi, 3:multi-hier
		         clickFolderMode: 2, // 1:activate, 2:expand, 3:activate and expand, 4:activate (dblclick expands)
		         //activeVisible: true, // Make sure, active nodes are visible (expanded).
		         source: treeData,
//		         source: {url: "QIMSMenus.json", debugDelay: 1000},
//				 lazyLoad: function(event, data) {
//			        data.result = {url: "ajax-QIMSMenus.json", debugDelay: 1000};
//			     }

				 beforeSelect: function(event, data) {
			        if( data.node.folder ){
			          return false;
			        }
			     },	
				
		         select: function(event, data) {
		           // Display list of selected nodes
		           var selNodes = data.tree.getSelectedNodes();
		           sysout(selNodes);
		           // convert to title/key array
		           var selKeys = $.map(selNodes, function(node){
		        	   sysout("[" + node.key + "]: '" + node.title + "'");
		                return "[" + node.key + "]: '" + node.title + "'";
		             });
		          // $(".echoSelection2").text(selKeys.join(", "));
		           sysout('==varSelected========================================================');
		           sysout(selKeys.join(",\n"));
		         },
		        /*  click: function(event, data) {
		             if( ! data.node.folder ){
		               data.node.toggleSelected();
		             }
		         }, */
		         
//		         dblclick: function(event, item) {
		         click: function(event, item) {
		             //data.node.toggleSelected();
		        	 var idx = $("#tabs").tabs('option', 'active');
					 var targetTab = '#TSCWrapper' + idx;
					 var selected = [];
//					 selected.push(item.node.key);
					 selected.push(item);
					 //alert(targetTab + " [" + data.node.key + "]: '" + data.node.title + "'");
					 //alert('path:' + item.node.data.mePath);
					 if( ! item.node.folder ){
						doPostMonthlyValidationImageOnTheWall(targetTab, selected,$("#meNMSCDemo").val());
					 }
		         }, 
		         keydown: function(event, data) {
		           if( event.which === 32 ) {
		             data.node.toggleSelected();
		             return false;
		           }
		         },
		         // The following options are only required, if we have more than one tree on one page:
		         //cookieId: "fancytree-Cb2",
		         //idPrefix: "fancytree-Cb2-"
		    });
		    
		  
		      $("#btnDeselectAll_<c:out value='${param.identifier}'/>").click(function(){
		        $("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree("getTree").visit(function(node){
		          node.setSelected(false);
		        });
		        return false;
		      });
		      $("#btnExpandAll_<c:out value='${param.identifier}'/>").click(function(){
		    	$("#treeWithCheckbox_<c:out value='${param.identifier}'/>").fancytree("getRootNode").visit(function(node){
		    	        //node.toggleExpanded();
		    		 node.setExpanded(true);
    	        });
		        return false;
		      });
		      $("#btnCollapseAll_<c:out value='${param.identifier}'/>").click(function(){
		    	$("#treeWithCheckbox_<c:out value='${param.identifier}'/>").fancytree("getRootNode").visit(function(node){
			    	node.setExpanded(false);
		    	        //node.toggleExpanded();
    	        });
		        return false;
		      });
		      
		      $("#TSCWrapper<c:out value='${param.identifier}'/>").on('click', '.close-window', function (e) {
		    	    //alert("#TSCWrapper<c:out value='${param.identifier}'/>" + ".close-window event");
					e.preventDefault();
					var tabIndex = $("#tabs").tabs('option', 'active') ;
					var cbName = $(this).closest('div.meDraggableItem').attr('id'); 
					//alert('[captured] '+cbName);
					$('#'+cbName).remove(); //remove chartWrapperHTML
				});
		      
		      
	 	});
	</script>
	
	<!-- Define where the tree should appear -->
	<!-- 
      <h5><a href="#" id="logger_<c out value='${param.identifier}'/>">haha</a></h5>
	 -->
	  <p style="padding-left:12px; font-size: 13px;">
	    <a href="#" id="btnDeselectAll_<c:out value='${param.identifier}'/>">Deselect all</a> -
	    <a href="#" id="btnExpandAll_<c:out value='${param.identifier}'/>">Expand all</a> - 
	    <a href="#" id="btnCollapseAll_<c:out value='${param.identifier}'/>">Collapse all</a>
	  </p>
	  <!-- 
	  <div>Selected keys: <span class="echoSelection2">-</span></div>
    identifier
	   -->
	
	  <div id="treeWithCheckbox_<c:out value="${param.identifier}"/>" style="padding-left:7px;"></div>
