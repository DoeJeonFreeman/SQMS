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
								      // Statistical Map - AMV vs. Sonde(IR1)		
							       	  // Statistical Map - AMV vs. Sonde(IR1)		
							       	  // Statistical Map - AMV vs. Sonde(IR1)	         
							       	   {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_f10200" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_ir1_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10300" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10001" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_f10201" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_ir1_m_f10401" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10301" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key:"amv_ir1_m_f10002" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10202" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10302" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10302" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10003" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_f10203" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10403" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10303" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10010" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10210" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10410" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10310" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10011" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_f10211" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10411" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_ir1_m_f10311" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10012" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10212" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10412" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10312" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key:"amv_ir1_m_f10013" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_f10213" , abbr:"AMV"}
											          ,{title: "MVD",     key:"amv_ir1_m_f10413" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_ir1_m_f10313" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10020" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10220" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10420" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10320" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10021" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10221" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10421" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10321" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10022" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10222" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10422" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10322" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10023" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10223" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10423" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10323" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10030" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10230" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10430" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10330" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10031" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10231" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10431" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10331" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10032" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10232" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10432" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10332" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_f10033" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_f10233" , abbr:"AMV"}
											          ,{title: "MVD",      key:"amv_ir1_m_f10433" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_f10333" , abbr:"AMV"}
											  ]}
														        
									      ]}
								        
								      ]},
							        
								      // Statistical Map - AMV vs. Sonde(SWIR)		
							       	  // Statistical Map - AMV vs. Sonde(SWIR)		
							       	  // Statistical Map - AMV vs. Sonde(SWIR)	
								      {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_swir_m_f10200" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_swir_m_f10300" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_f10010" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_swir_m_f10210" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_f10410" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_swir_m_f10310" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_f10020" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_swir_m_f10220" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_f10420" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_swir_m_f10320" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_f10030" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_swir_m_f10230" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_f10430" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_swir_m_f10330" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
								      
							       	  // Statistical Map - AMV vs. Sonde(VIS)		
							       	  // Statistical Map - AMV vs. Sonde(VIS)		
							       	  // Statistical Map - AMV vs. Sonde(VIS)		
								      {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_vis_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_vis_m_f10200" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_vis_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_vis_m_f10300" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",   key:"amv_vis_m_f10001" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_vis_m_f10201" , abbr:"AMV"}
											          ,{title: "MVD",     key:"amv_vis_m_f10401" , abbr:"AMV"}
											          ,{title: "RMSVD",   key:"amv_vis_m_f10301" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_vis_m_f10003" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_vis_m_f10203" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_vis_m_f10403" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_vis_m_f10303" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10010" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10210" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10410" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10310" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10011" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10211" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10411" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10311" , abbr:"AMV"}
														  ]}
													    
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10013" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10213" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10413" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10313" , abbr:"AMV"}
														  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10020" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10220" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10420" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10320" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10021" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10221" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10421" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10321" , abbr:"AMV"}
														  ]}
													     
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10023" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10223" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10423" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10323" , abbr:"AMV"}
														  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10030" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10230" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10430" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10330" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number", key:"amv_vis_m_f10031" , abbr:"AMV"}
														          ,{title: "Bias",  key:"amv_vis_m_f10231" , abbr:"AMV"}
														          ,{title: "MVD",   key:"amv_vis_m_f10431" , abbr:"AMV"}
														          ,{title: "RMSVD", key:"amv_vis_m_f10331" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_vis_m_f10033" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_vis_m_f10233" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_vis_m_f10433" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_vis_m_f10333" , abbr:"AMV"}
														  ]}
														        
									      ]}
								        
								      ]},
								      
									  // Statistical Map - AMV vs. Sonde(WVA)		
							       	  // Statistical Map - AMV vs. Sonde(WVA)		
							       	  // Statistical Map - AMV vs. Sonde(WVA)		
								      {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_wva_m_f10000" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_wva_m_f10200" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_wva_m_f10400" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_wva_m_f10300" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_wva_m_f10001" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_wva_m_f10201" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_wva_m_f10401" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_wva_m_f10301" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_wva_m_f10002" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_wva_m_f10202" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_wva_m_f10402" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_wva_m_f10302" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_wva_m_f10003" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_wva_m_f10203" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_wva_m_f10403" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_wva_m_f10303" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10010" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10210" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10410" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10310" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10011" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10211" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10411" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10311" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10012" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10212" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10412" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10312" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10013" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10213" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10413" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10313" , abbr:"AMV"}
												  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
							                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10020" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10220" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10420" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10320" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10021" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10221" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10421" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10321" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10022" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10222" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10422" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10322" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wva_m_f10023" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wva_m_f10223" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wva_m_f10423" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wva_m_f10323" , abbr:"AMV"}
												  ]}
														        
									      ]}
								      ]},
								      // Statistical Map - AMV vs. Sonde(WV1)		
							       	  // Statistical Map - AMV vs. Sonde(WV1)		
							       	  // Statistical Map - AMV vs. Sonde(WV1)		
								      {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								    	  children: [//
										      {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",   key:"amv_wv1_m_f10000" , abbr:"AMV"}
												          ,{title: "Bias",    key:"amv_wv1_m_f10200" , abbr:"AMV"}
												          ,{title: "MVD",     key:"amv_wv1_m_f10400" , abbr:"AMV"}
												          ,{title: "RMSVD",   key:"amv_wv1_m_f10300" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wv1_m_f10001" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wv1_m_f10201" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wv1_m_f10401" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wv1_m_f10301" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wv1_m_f10002" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wv1_m_f10202" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wv1_m_f10402" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wv1_m_f10302" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_wv1_m_f10003" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_wv1_m_f10203" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_wv1_m_f10403" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_wv1_m_f10303" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10010" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10210" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10410" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10310" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10011" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10211" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10411" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10311" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10012" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10212" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10412" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10312" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10013" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10213" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10413" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10313" , abbr:"AMV"}
													  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
								                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10020" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10220" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10420" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10320" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10021" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10221" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10421" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10321" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10022" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10222" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10422" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10322" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv1_m_f10023" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv1_m_f10223" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv1_m_f10423" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv1_m_f10323" , abbr:"AMV"}
													  ]}
															        
										      ]}
								      ]},
							        
	   							      // Statistical Map - AMV vs. Sonde(WV2)		
							       	  // Statistical Map - AMV vs. Sonde(WV2)		
							       	  // Statistical Map - AMV vs. Sonde(WV2)		
								         {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								    	  	children: [//
											      {title: "All Height", folder: true, hideCheckbox:true,//
											        children: [//
												      {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",   key:"amv_wv2_m_f10000" , abbr:"AMV"}
													          ,{title: "Bias",    key:"amv_wv2_m_f10200" , abbr:"AMV"}
													          ,{title: "MVD",     key:"amv_wv2_m_f10400" , abbr:"AMV"}
													          ,{title: "RMSVD",   key:"amv_wv2_m_f10300" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv2_m_f10001" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv2_m_f10201" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv2_m_f10401" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv2_m_f10301" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv2_m_f10002" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv2_m_f10202" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv2_m_f10402" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv2_m_f10302" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wv2_m_f10003" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wv2_m_f10203" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wv2_m_f10403" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wv2_m_f10303" , abbr:"AMV"}
													  ]}
																        
											      ]},
											      {title: "High Height", folder: true, hideCheckbox:true,//
											        children: [//
												      {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10010" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10210" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10410" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10310" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10011" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10211" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10411" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10311" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10012" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10212" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10412" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10312" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10013" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10213" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10413" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10313" , abbr:"AMV"}
														  ]}
																        
											      ]},
											      {title: "Mid Height", folder: true, hideCheckbox:true,//
											        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10020" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10220" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10420" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10320" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10021" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10221" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10421" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10321" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10022" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10222" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10422" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10322" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_f10023" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_f10223" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_f10423" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_f10323" , abbr:"AMV"}
														  ]}
																        
											      ]}
								      ]},
								      
								      
	   							      // Statistical Map - AMV vs. NWP (IR1)		
	   							      // Statistical Map - AMV vs. NWP (IR1)		
	   							      // Statistical Map - AMV vs. NWP (IR1)		
								      {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key:"amv_ir1_m_n10000" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_ir1_m_n10200" , abbr:"AMV"}
											          ,{title: "MVD",   key:"amv_ir1_m_n10400" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_ir1_m_n103300" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_n10001" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_n10201" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_ir1_m_n10401" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_n10301" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",   key:"amv_ir1_m_n10002" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_n10202" , abbr:"AMV"}
											          ,{title: "MVD",     key:"amv_ir1_m_n10402" , abbr:"AMV"}
											          ,{title: "RMSVD",   key:"amv_ir1_m_n10302" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",   key:"amv_ir1_m_n10003" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_n10203" , abbr:"AMV"}
											          ,{title: "MVD",     key:"amv_ir1_m_n10403" , abbr:"AMV"}
											          ,{title: "RMSVD",   key:"amv_ir1_m_n10303" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_n10010" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_n10210" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_ir1_m_n10410" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_n10310" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number", key:"amv_ir1_m_n10011" , abbr:"AMV"}
											          ,{title: "Bias",  key:"amv_ir1_m_n10211" , abbr:"AMV"}
											          ,{title: "MVD",   key:"amv_ir1_m_n10411" , abbr:"AMV"}
											          ,{title: "RMSVD", key:"amv_ir1_m_n10311" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_ir1_m_n10012" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_ir1_m_n10212" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_ir1_m_n10412" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_ir1_m_n10312" , abbr:"AMV"}
											  ]}
										      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",   key:"amv_ir1_m_n10013" , abbr:"AMV"}
											          ,{title: "Bias",    key:"amv_ir1_m_n10213" , abbr:"AMV"}
											          ,{title: "MVD",     key:"amv_ir1_m_n10413" , abbr:"AMV"}
											          ,{title: "RMSVD",   key:"amv_ir1_m_n10313" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
							                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_ir1_m_n10020" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_ir1_m_n10220" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_ir1_m_n10420" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_ir1_m_n10320" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key:"amv_ir1_m_n10021" , abbr:"AMV"}
												          ,{title: "Bias",  key:"amv_ir1_m_n10221" , abbr:"AMV"}
												          ,{title: "MVD",   key:"amv_ir1_m_n10421" , abbr:"AMV"}
												          ,{title: "RMSVD", key:"amv_ir1_m_n10321" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_ir1_m_n10022" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_ir1_m_n10222" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_ir1_m_n10422" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_ir1_m_n10322" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",   key:"amv_ir1_m_n10023" , abbr:"AMV"}
												          ,{title: "Bias",    key:"amv_ir1_m_n10223" , abbr:"AMV"}
												          ,{title: "MVD",     key:"amv_ir1_m_n10423" , abbr:"AMV"}
												          ,{title: "RMSVD",   key:"amv_ir1_m_n10323" , abbr:"AMV"}
												  ]}
														        
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
							                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_ir1_m_n10030" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_ir1_m_n10230" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_ir1_m_n10430" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_ir1_m_n10330" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number", key:"amv_ir1_m_n10031" , abbr:"AMV"}
												          ,{title: "Bias",  key:"amv_ir1_m_n10231" , abbr:"AMV"}
												          ,{title: "MVD",   key:"amv_ir1_m_n10431" , abbr:"AMV"}
												          ,{title: "RMSVD", key:"amv_ir1_m_n10331" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(STC)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_ir1_m_n10032" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_ir1_m_n10232" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_ir1_m_n10432" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_ir1_m_n10332" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",   key:"amv_ir1_m_n10033" , abbr:"AMV"}
												          ,{title: "Bias",    key:"amv_ir1_m_n10233" , abbr:"AMV"}
												          ,{title: "MVD",     key:"amv_ir1_m_n10433" , abbr:"AMV"}
												          ,{title: "RMSVD",   key:"amv_ir1_m_n10333" , abbr:"AMV"}
												  ]}
														        
									      ]}
								        
								      ]},
	   							      // Statistical Map - AMV vs. NWP (SWIR)		
	   							      // Statistical Map - AMV vs. NWP (SWIR)		
	   							      // Statistical Map - AMV vs. NWP (SWIR)									        
								      {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [//
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_n10000" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_swir_m_n10200" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_n10400" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_swir_m_n10300" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_n10010" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_swir_m_n10210" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_n10410" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_swir_m_n10310" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_n10020" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_swir_m_n10220" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_n10420" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_swir_m_n10320" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "H-A(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Number",  key:"amv_swir_m_n10030" , abbr:"AMV"}
											          ,{title: "Bias",   key:"amv_swir_m_n10230" , abbr:"AMV"}
											          ,{title: "MVD",    key:"amv_swir_m_n10430" , abbr:"AMV"}
											          ,{title: "RMSVD",  key:"amv_swir_m_n10330" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
								      
	   							      // Statistical Map - AMV vs. NWP (VIS)		
	   							      // Statistical Map - AMV vs. NWP (VIS)		
	   							      // Statistical Map - AMV vs. NWP (VIS)		
								      {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [//
						                   {title: "All Height", folder: true, hideCheckbox:true,//
										        children: [//
											      {title: "H-A(All)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_vis_m_n10000" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_vis_m_n10200" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_vis_m_n10400" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_vis_m_n10300" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",   key:"amv_vis_m_n10001" , abbr:"AMV"}
												          ,{title: "Bias",    key:"amv_vis_m_n10201" , abbr:"AMV"}
												          ,{title: "MVD",     key:"amv_vis_m_n10401" , abbr:"AMV"}
												          ,{title: "RMSVD",   key:"amv_vis_m_n10301" , abbr:"AMV"}
												  ]}
											      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
											        children: [
												          {title: "Number",  key:"amv_vis_m_n10003" , abbr:"AMV"}
												          ,{title: "Bias",   key:"amv_vis_m_n10203" , abbr:"AMV"}
												          ,{title: "MVD",    key:"amv_vis_m_n10403" , abbr:"AMV"}
												          ,{title: "RMSVD",  key:"amv_vis_m_n10303" , abbr:"AMV"}
												  ]}
															        
										      ]},
										      {title: "High Height", folder: true, hideCheckbox:true,//
										        children: [//
								                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10010" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10210" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10410" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10310" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10011" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10211" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10411" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10311" , abbr:"AMV"}
													  ]}
												    
												      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10013" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10213" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10413" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10313" , abbr:"AMV"}
													  ]}
															        
										      ]},
										      {title: "Mid Height", folder: true, hideCheckbox:true,//
										        children: [//
								                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10020" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10220" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10420" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10320" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10021" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10221" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10421" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10321" , abbr:"AMV"}
													  ]}
												     
												      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10023" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10223" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10423" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10323" , abbr:"AMV"}
													  ]}
													        
										      ]},
										      {title: "Low Height", folder: true, hideCheckbox:true,//
										        children: [//
								                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10030" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10230" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10430" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10330" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number", key:"amv_vis_m_n10031" , abbr:"AMV"}
													          ,{title: "Bias",  key:"amv_vis_m_n10231" , abbr:"AMV"}
													          ,{title: "MVD",   key:"amv_vis_m_n10431" , abbr:"AMV"}
													          ,{title: "RMSVD", key:"amv_vis_m_n10331" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(IR/WV)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_vis_m_n10033" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_vis_m_n10233" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_vis_m_n10433" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_vis_m_n10333" , abbr:"AMV"}
													  ]}
															        
										      ]}
								        
								      ]},
	   							      // Statistical Map - AMV vs. NWP (WVA)		
	   							      // Statistical Map - AMV vs. NWP (WVA)		
	   							      // Statistical Map - AMV vs. NWP (WVA)		
								      {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
									        children: [//
							                   {title: "All Height", folder: true, hideCheckbox:true,//
											        children: [//
												      {title: "H-A(All)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wva_m_n10000" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wva_m_n10200" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wva_m_n10400" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wva_m_n10300" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wva_m_n10001" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wva_m_n10201" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wva_m_n10401" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wva_m_n10301" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wva_m_n10002" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wva_m_n10202" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wva_m_n10402" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wva_m_n10302" , abbr:"AMV"}
													  ]}
												      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
												        children: [
													          {title: "Number",  key:"amv_wva_m_n10003" , abbr:"AMV"}
													          ,{title: "Bias",   key:"amv_wva_m_n10203" , abbr:"AMV"}
													          ,{title: "MVD",    key:"amv_wva_m_n10403" , abbr:"AMV"}
													          ,{title: "RMSVD",  key:"amv_wva_m_n10303" , abbr:"AMV"}
													  ]}
																        
											      ]},
											      {title: "High Height", folder: true, hideCheckbox:true,//
											        children: [//
												      {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10010" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10210" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10410" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10310" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10011" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10211" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10411" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10311" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10012" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10212" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10412" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10312" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10013" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10213" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10413" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10313" , abbr:"AMV"}
														  ]}
																        
											      ]},
											      {title: "Mid Height", folder: true, hideCheckbox:true,//
											        children: [//
									                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10020" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10220" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10420" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10320" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10021" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10221" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10421" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10321" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10022" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10222" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10422" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10322" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wva_m_n10023" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wva_m_n10223" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wva_m_n10423" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wva_m_n10323" , abbr:"AMV"}
														  ]}
																        
											      ]}
									      ]},
								       	  // Statistical Map - AMV vs. NWP(WV1)		
								       	  // Statistical Map - AMV vs. NWP(WV1)		
								       	  // Statistical Map - AMV vs. NWP(WV1)		
									      {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
									    	  children: [//
							    	             {title: "All Height", folder: true, hideCheckbox:true,//
												        children: [//
													      {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",   key:"amv_wv1_m_n10000" , abbr:"AMV"}
														          ,{title: "Bias",    key:"amv_wv1_m_n10200" , abbr:"AMV"}
														          ,{title: "MVD",     key:"amv_wv1_m_n10400" , abbr:"AMV"}
														          ,{title: "RMSVD",   key:"amv_wv1_m_n10300" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv1_m_n10001" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv1_m_n10201" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv1_m_n10401" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv1_m_n10301" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv1_m_n10002" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv1_m_n10202" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv1_m_n10402" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv1_m_n10302" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv1_m_n10003" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv1_m_n10203" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv1_m_n10403" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv1_m_n10303" , abbr:"AMV"}
														  ]}
																	        
												      ]},
												      {title: "High Height", folder: true, hideCheckbox:true,//
												        children: [//
													      {title: "H-A(All)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10010" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10210" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10410" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10310" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10011" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10211" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10411" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10311" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10012" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10212" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10412" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10312" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10013" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10213" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10413" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10313" , abbr:"AMV"}
															  ]}
																	        
												      ]},
												      {title: "Mid Height", folder: true, hideCheckbox:true,//
												        children: [//
										                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10020" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10220" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10420" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10320" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10021" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10221" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10421" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10321" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10022" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10222" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10422" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10322" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv1_m_n10023" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv1_m_n10223" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv1_m_n10423" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv1_m_n10323" , abbr:"AMV"}
															  ]}
																	        
												      ]}
									      ]},
								        
		   							      // Statistical Map - AMV vs. NWP(WV2)		
								       	  // Statistical Map - AMV vs. NWP(WV2)		
								       	  // Statistical Map - AMV vs. NWP(WV2)		
									       {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
									    	  children: [//
							    	             {title: "All Height", folder: true, hideCheckbox:true,//
												        children: [//
													      {title: "H-A(All)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",   key:"amv_wv2_m_n10000" , abbr:"AMV"}
														          ,{title: "Bias",    key:"amv_wv2_m_n10200" , abbr:"AMV"}
														          ,{title: "MVD",     key:"amv_wv2_m_n10400" , abbr:"AMV"}
														          ,{title: "RMSVD",   key:"amv_wv2_m_n10300" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_n10001" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_n10201" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_n10401" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_n10301" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_n10002" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_n10202" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_n10402" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_n10302" , abbr:"AMV"}
														  ]}
													      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
													        children: [
														          {title: "Number",  key:"amv_wv2_m_n10003" , abbr:"AMV"}
														          ,{title: "Bias",   key:"amv_wv2_m_n10203" , abbr:"AMV"}
														          ,{title: "MVD",    key:"amv_wv2_m_n10403" , abbr:"AMV"}
														          ,{title: "RMSVD",  key:"amv_wv2_m_n10303" , abbr:"AMV"}
														  ]}
																	        
												      ]},
												      {title: "High Height", folder: true, hideCheckbox:true,//
												        children: [//
													      {title: "H-A(All)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10010" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10210" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10410" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10310" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10011" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10211" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10411" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10311" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10012" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10212" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10412" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10312" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10013" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10213" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10413" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10313" , abbr:"AMV"}
															  ]}
																	        
												      ]},
												      {title: "Mid Height", folder: true, hideCheckbox:true,//
												        children: [//
										                   {title: "H-A(All)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10020" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10220" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10420" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10320" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(EBBT)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10021" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10221" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10421" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10321" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10022" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10222" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10422" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10322" , abbr:"AMV"}
															  ]}
														      ,{title: "H-A(NTCC)", folder: true, hideCheckbox:true,//
														        children: [
															          {title: "Number",  key:"amv_wv2_m_n10023" , abbr:"AMV"}
															          ,{title: "Bias",   key:"amv_wv2_m_n10223" , abbr:"AMV"}
															          ,{title: "MVD",    key:"amv_wv2_m_n10423" , abbr:"AMV"}
															          ,{title: "RMSVD",  key:"amv_wv2_m_n10323" , abbr:"AMV"}
															  ]}
																	        
												      ]}
									      ]},
								      
							      ]}
							      
							      // 22
							      // Density Plot goes here
      							  ,{title: "Density Plot", folder: true, hideCheckbox:true,
							        children: [
								      // Density Plot - AMV vs. Sonde(IR1)		
							       	  // Density Plot - AMV vs. Sonde(IR1)		
							       	  // Density Plot - AMV vs. Sonde(IR1)	         
							       	  {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_f25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_f25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_f25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_f25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
							        
								      // Density Plot - AMV vs. Sonde(SWIR)		
							       	  // Density Plot - AMV vs. Sonde(SWIR)	
							       	  // Density Plot - AMV vs. Sonde(SWIR)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_f25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_f25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_f25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_f25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. Sonde(VIS)		
							       	  // Density Plot - AMV vs. Sonde(VIS)	
							       	  // Density Plot - AMV vs. Sonde(VIS)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_f25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_f25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_f25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_f25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. Sonde(WVA)		
							       	  // Density Plot - AMV vs. Sonde(WVA)	
							       	  // Density Plot - AMV vs. Sonde(WVA)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_f25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  
									  // Density Plot - AMV vs. Sonde(WV1)		
							       	  // Density Plot - AMV vs. Sonde(WV1)	
							       	  // Density Plot - AMV vs. Sonde(WV1)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_f25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. NWP(WV2)		
							       	  // Density Plot - AMV vs. NWP(WV2)	
							       	  // Density Plot - AMV vs. NWP(WV2)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_f25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_f25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_f25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_f25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_f25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_f25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]}, 
									  
									  // Density Plot - AMV vs. NWP(IR1)		
							       	  // Density Plot - AMV vs. NWP(IR1)		
							       	  // Density Plot - AMV vs. NWP(IR1)	         
							       	  {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_n25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_n25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_ir1_m_n25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_ir1_m_n25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_ir1_m_n25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_ir1_m_n25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
							        
								      // Density Plot - AMV vs. NWP(SWIR)		
							       	  // Density Plot - AMV vs. NWP(SWIR)	
							       	  // Density Plot - AMV vs. NWP(SWIR)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_n25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_n25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_swir_m_n25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_swir_m_n25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_swir_m_n25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_swir_m_n25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. NWP(VIS)		
							       	  // Density Plot - AMV vs. NWP(VIS)	
							       	  // Density Plot - AMV vs. NWP(VIS)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25122" , abbr:"AMV"}
											  ]}
									      ]},
									      {title: "Low Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_vis_m_n25030" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_vis_m_n25130" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25031" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25131" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_vis_m_n25032" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_vis_m_n25132" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. NWP(WVA)		
							       	  // Density Plot - AMV vs. NWP(WVA)	
							       	  // Density Plot - AMV vs. NWP(WVA)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wva_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wva_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wva_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wva_m_n25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  
									  // Density Plot - AMV vs. NWP(WV1)		
							       	  // Density Plot - AMV vs. NWP(WV1)	
							       	  // Density Plot - AMV vs. NWP(WV1)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv1_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv1_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv1_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv1_m_n25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
									  
									  // Density Plot - AMV vs. NWP(WV2)		
							       	  // Density Plot - AMV vs. NWP(WV2)	
							       	  // Density Plot - AMV vs. NWP(WV2)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "All Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_f25000" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_f25100" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25001" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25101" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25002" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25102" , abbr:"AMV"}
											  ]}
									      ]},
										  
									      {title: "High Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_n25010" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_n25110" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25011" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25111" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25012" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25112" , abbr:"AMV"}
											  ]}
														        
									      ]},
									      {title: "Mid Height", folder: true, hideCheckbox:true,//
									        children: [//
										      {title: "Lat.(All)", folder: true, hideCheckbox:true,//
										        children: [
											          {title: "Wind Speed",     key:"amv_wv2_m_n25020" , abbr:"AMV"}
											         ,{title: "Wind Direction", key:"amv_wv2_m_n25120" , abbr:"AMV"}
												  ]}
											  ,{title: "Lat.(Mid)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25021" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25121" , abbr:"AMV"}
											  ]}
											  ,{title: "Lat.(Tropical)", folder: true, hideCheckbox:true,//
												children: [
													  {title: "Wind Speed",     key:"amv_wv2_m_n25022" , abbr:"AMV"}
													 ,{title: "Wind Direction", key:"amv_wv2_m_n25122" , abbr:"AMV"}
											  ]}
									      ]}
								        
								      ]},
								  ]}		  
							      // Density Plot goes here
							      /////////////////////////
							      
							      
							      // 333
							      // Bar Plot 1 goes here
							      ,{title: "Bar Plot 1", folder: true, hideCheckbox:true,
							        children: [
									
								      // Bar Plot 1 - AMV vs. Sonde(IR1)		
							       	  // Bar Plot 1 - AMV vs. Sonde(IR1)		
							       	  // Bar Plot 1 - AMV vs. Sonde(IR1)	         
							       	  {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_f50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_f50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_f50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_f50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_f50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (STC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_f50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_f50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_f50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_f50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (IR/WV)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_f50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_f50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_f50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_f50303" , abbr:"AMV"}
									      ]}
								      ]},
							        
								      // Bar Plot 1 - AMV vs. Sonde(SWIR)		
							       	  // Bar Plot 1 - AMV vs. Sonde(SWIR)	
							       	  // Bar Plot 1 - AMV vs. Sonde(SWIR)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_swir_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_swir_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_swir_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_swir_m_f50300" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. Sonde(VIS)		
							       	  // Bar Plot 1 - AMV vs. Sonde(VIS)	
							       	  // Bar Plot 1 - AMV vs. Sonde(VIS)	
									  {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_f50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_f50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_f50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_f50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_f50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (IR/WV)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_f50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_f50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_f50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_f50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. Sonde(WVA)		
							       	  // Bar Plot 1 - AMV vs. Sonde(WVA)	
							       	  // Bar Plot 1 - AMV vs. Sonde(WVA)	
									  {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_f50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_f50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_f50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_f50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_f50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_f50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_f50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_f50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_f50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_f50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_f50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_f50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_f50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. Sonde(WV1)		
							       	  // Bar Plot 1 - AMV vs. Sonde(WV1)	
							       	  // Bar Plot 1 - AMV vs. Sonde(WV1)	
									  {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_f50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_f50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_f50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_f50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_f50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_f50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_f50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_f50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_f50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_f50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_f50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_f50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_f50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. Sonde(WV2)		
							       	  // Bar Plot 1 - AMV vs. Sonde(WV2)	
							       	  // Bar Plot 1 - AMV vs. Sonde(WV2)	
									  {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_f50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_f50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_f50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_f50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_f50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_f50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_f50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_f50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_f50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_f50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_f50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_f50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_f50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_f50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_f50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_f50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. NWP(IR1)		
							       	  // Bar Plot 1 - AMV vs. NWP(IR1)		
							       	  // Bar Plot 1 - AMV vs. NWP(IR1)	         
							       	  {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (STC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_n50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_n50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_n50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_n50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (IR/WV)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_ir1_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_ir1_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_ir1_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_ir1_m_n50303" , abbr:"AMV"}
									      ]}
								      ]},
							        
								      // Bar Plot 1 - AMV vs. NWP(SWIR)		
							       	  // Bar Plot 1 - AMV vs. NWP(SWIR)	
							       	  // Bar Plot 1 - AMV vs. NWP(SWIR)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_swir_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_swir_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_swir_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_swir_m_n50300" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. NWP(VIS)		
							       	  // Bar Plot 1 - AMV vs. NWP(VIS)	
							       	  // Bar Plot 1 - AMV vs. NWP(VIS)	
									  {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (IR/WV)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  
									  // Bar Plot 1 - AMV vs. NWP(VIS)		
							       	  // Bar Plot 1 - AMV vs. NWP(VIS)	
							       	  // Bar Plot 1 - AMV vs. NWP(VIS)	
									  {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (IR/WV)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_vis_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_vis_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_vis_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_vis_m_n50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. NWP(WVA)		
							       	  // Bar Plot 1 - AMV vs. NWP(WVA)	
							       	  // Bar Plot 1 - AMV vs. NWP(WVA)	
									  {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_n50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_n50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_n50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_n50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wva_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wva_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wva_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wva_m_n50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. NWP(WV1)		
							       	  // Bar Plot 1 - AMV vs. NWP(WV1)	
							       	  // Bar Plot 1 - AMV vs. NWP(WV1)	
									  {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_n50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_n50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_n50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_n50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv1_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv1_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv1_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv1_m_n50303" , abbr:"AMV"}
									      ]}
								      ]},
									  
									  // Bar Plot 1 - AMV vs. NWP(WV2)		
							       	  // Bar Plot 1 - AMV vs. NWP(WV2)	
							       	  // Bar Plot 1 - AMV vs. NWP(WV2)	
									  {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
									      {title: "Height Assignment (All)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_n50000" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_n50200" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_n50400" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_n50300" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (EBBT)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_n50001" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_n50201" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_n50401" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_n50301" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_n50002" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_n50202" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_n50402" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_n50302" , abbr:"AMV"}
									      ]},
										  {title: "Height Assignment (NTCC)", folder: true, hideCheckbox:true,//
									        children: [
												{title: "Number", key:"amv_wv2_m_n50003" , abbr:"AMV"},
												{title: "Bias",   key:"amv_wv2_m_n50203" , abbr:"AMV"},
												{title: "MVD",    key:"amv_wv2_m_n50403" , abbr:"AMV"},
											    {title: "RMSVD",  key:"amv_wv2_m_n50303" , abbr:"AMV"}
									      ]}
								      ]}
								  ]}		  
							      // Bar Plot 1 goes here
							      /////////////////////////
							      
							      
							      // 4444 55555
							      // Bar Plot 2 , Zonal Plot goes here
      							 ,{title: "Bar Plot 2", folder: true, hideCheckbox:true,
							        children: [
								      // Bar Plot 2 - AMV vs. Sonde(IR1)		
							       	  // Bar Plot 2 - AMV vs. Sonde(IR1)		
							       	  // Bar Plot 2 - AMV vs. Sonde(IR1)	         
							       	  {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_ir1_m_f55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_ir1_m_f55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_ir1_m_f55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_ir1_m_f55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_ir1_m_f55900" , abbr:"AMV"}
								      ]},
							        
								      // Bar Plot 2 - AMV vs. Sonde(SWIR)		
							       	  // Bar Plot 2 - AMV vs. Sonde(SWIR)	
							       	  // Bar Plot 2 - AMV vs. Sonde(SWIR)	
							       	  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_swir_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_swir_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_swir_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_swir_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_swir_m_n55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. Sonde(VIS)		
							       	  // Bar Plot 2 - AMV vs. Sonde(VIS)	
							       	  // Bar Plot 2 - AMV vs. Sonde(VIS)	
							       	  {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_vis_m_f55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_vis_m_f55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_vis_m_f55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_vis_m_f55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_vis_m_f55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. Sonde(WVA)		
							       	  // Bar Plot 2 - AMV vs. Sonde(WVA)	
							       	  // Bar Plot 2 - AMV vs. Sonde(WVA)	
							       	  {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wva_m_f55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wva_m_f55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wva_m_f55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wva_m_f55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wva_m_f55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. Sonde(WV1)		
							       	  // Bar Plot 2 - AMV vs. Sonde(WV1)	
							       	  // Bar Plot 2 - AMV vs. Sonde(WV1)	
							       	  {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wv1_m_f55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wv1_m_f55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wv1_m_f55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wv1_m_f55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wv1_m_f55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. Sonde(WV2)		
							       	  // Bar Plot 2 - AMV vs. Sonde(WV2)	
							       	  // Bar Plot 2 - AMV vs. Sonde(WV2)	
							       	  {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wv2_m_f55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wv2_m_f55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wv2_m_f55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wv2_m_f55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wv2_m_f55900" , abbr:"AMV"}
								      ]},
									 
									  // Bar Plot 2 - AMV vs. NWP(IR1)		
							       	  // Bar Plot 2 - AMV vs. NWP(IR1)		
							       	  // Bar Plot 2 - AMV vs. NWP(IR1)	         
							       	  {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_ir1_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_ir1_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_ir1_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_ir1_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_ir1_m_n55900" , abbr:"AMV"}
								      ]},
							       	 
								      // Bar Plot 2 - AMV vs. NWP(SWIR)		
							       	  // Bar Plot 2 - AMV vs. NWP(SWIR)	
							       	  // Bar Plot 2 - AMV vs. NWP(SWIR)	
							       	  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_swir_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_swir_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_swir_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_swir_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_swir_m_n55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. NWP(VIS)		
							       	  // Bar Plot 2 - AMV vs. NWP(VIS)	
							       	  // Bar Plot 2 - AMV vs. NWP(VIS)	
							       	  {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_vis_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_vis_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_vis_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_vis_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_vis_m_n55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. NWP(WVA)		
							       	  // Bar Plot 2 - AMV vs. NWP(WVA)	
							       	  // Bar Plot 2 - AMV vs. NWP(WVA)	
							       	  {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wva_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wva_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wva_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wva_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wva_m_n55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. NWP(WV1)		
							       	  // Bar Plot 2 - AMV vs. NWP(WV1)	
							       	  // Bar Plot 2 - AMV vs. NWP(WV1)	
							       	  {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wv1_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wv1_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wv1_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wv1_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wv1_m_n55900" , abbr:"AMV"}
								      ]},
									  
									  // Bar Plot 2 - AMV vs. NWP(WV2)		
							       	  // Bar Plot 2 - AMV vs. NWP(WV2)	
							       	  // Bar Plot 2 - AMV vs. NWP(WV2)	
							       	  {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "QI Distribution",             key:"amv_wv2_m_n55200" , abbr:"AMV"},
											{title: "Wind-Speed Distribution",     key:"amv_wv2_m_n55000" , abbr:"AMV"},
											{title: "Wind-Direction Distribution", key:"amv_wv2_m_n55100" , abbr:"AMV"},
											{title: "Height Distribution",         key:"amv_wv2_m_n55800" , abbr:"AMV"},
											{title: "H-A Method Distribution",     key:"amv_wv2_m_n55900" , abbr:"AMV"}
								      ]},
									  
								  ]}	
							  // // Zonal Plot 
							  // // Zonal Plot 
							  // // Zonal Plot 
								  ,{title: "Zonal Plot", folder: true, hideCheckbox:true,
							        children: [
									  
									  // Zonal Plot - AMV vs. NWP(IR1)		
							       	  // Zonal Plot - AMV vs. NWP(IR1)		
							       	  // Zonal Plot - AMV vs. NWP(IR1)	         
							       	  {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_ir1_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_ir1_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_ir1_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_ir1_m_f90300" , abbr:"AMV"}
								      ]},
							       	 
								      // Zonal Plot - AMV vs. NWP(SWIR)		
							       	  // Zonal Plot - AMV vs. NWP(SWIR)	
							       	  // Zonal Plot - AMV vs. NWP(SWIR)	
							       	  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_swir_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_swir_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_swir_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_swir_m_f90300" , abbr:"AMV"}
								      ]},
									 
									  // Zonal Plot - AMV vs. NWP(VIS)		
							       	  // Zonal Plot - AMV vs. NWP(VIS)	
							       	  // Zonal Plot - AMV vs. NWP(VIS)	
							       	  {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_vis_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_vis_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_vis_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_vis_m_f90300" , abbr:"AMV"}
								      ]},
									  
									  // Zonal Plot - AMV vs. NWP(WVA)		
							       	  // Zonal Plot - AMV vs. NWP(WVA)	
							       	  // Zonal Plot - AMV vs. NWP(WVA)	
							       	  {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_wva_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_wva_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_wva_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_wva_m_f90300" , abbr:"AMV"}
								      ]},
									  
									  // Zonal Plot - AMV vs. NWP(WV1)		
							       	  // Zonal Plot - AMV vs. NWP(WV1)	
							       	  // Zonal Plot - AMV vs. NWP(WV1)	
							       	  {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_wv1_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_wv1_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_wv1_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_wv1_m_f90300" , abbr:"AMV"}
								      ]},
									  
									  // Zonal Plot - AMV vs. NWP(WV2)		
							       	  // Zonal Plot - AMV vs. NWP(WV2)	
							       	  // Zonal Plot - AMV vs. NWP(WV2)	
							       	  {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "Number",  key:"amv_wv2_m_f90000" , abbr:"AMV"},
											{title: "Bias",    key:"amv_wv2_m_f90200" , abbr:"AMV"},
											{title: "MVD",     key:"amv_wv2_m_f90400" , abbr:"AMV"},
											{title: "RMSVD",   key:"amv_wv2_m_f90300" , abbr:"AMV"}
								      ]}
									  
								  ]}		  
							      // Bar Plot 2 goes here
							      /////////////////////////
							 
							      // 666666
							      // Monthly Trend goes here
							      ,{title: "Monthly Trend", folder: true, hideCheckbox:true,
							        children: [
								      // Monthly Trend - AMV vs. Sonde(IR1)		
							       	  // Monthly Trend - AMV vs. Sonde(IR1)		
							       	  // Monthly Trend - AMV vs. Sonde(IR1)	         
							       	  {title: "AMV vs. Sonde(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_ir1_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_ir1_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_ir1_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_ir1_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_ir1_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_ir1_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_ir1_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_ir1_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_ir1_y_f42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_ir1_y_f42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_ir1_y_f42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_ir1_y_f42011" , abbr:"AMV"}
								      ]},
							        
								      // Monthly Trend - AMV vs. Sonde(SWIR)		
							       	  // Monthly Trend - AMV vs. Sonde(SWIR)	
							       	  // Monthly Trend - AMV vs. Sonde(SWIR)	
									  {title: "AMV vs. Sonde(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_swir_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_swir_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_swir_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_swir_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_swir_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_swir_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_swir_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_swir_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_swir_y_f42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_swir_y_f42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_swir_y_f42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_swir_y_f42011" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. Sonde(VIS)		
							       	  // Monthly Trend - AMV vs. Sonde(VIS)	
							       	  // Monthly Trend - AMV vs. Sonde(VIS)	
									  {title: "AMV vs. Sonde(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_vis_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_vis_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_vis_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_vis_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_vis_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_vis_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_vis_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_vis_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_vis_y_f42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_vis_y_f42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_vis_y_f42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_vis_y_f42011" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. Sonde(WVA)		
							       	  // Monthly Trend - AMV vs. Sonde(WVA)	
							       	  // Monthly Trend - AMV vs. Sonde(WVA)	
									  {title: "AMV vs. Sonde(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wva_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wva_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wva_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wva_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wva_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wva_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wva_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wva_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wva_y_f42008" , abbr:"AMV"}
								      ]},
									  
									  
									  // Monthly Trend - AMV vs. Sonde(WV1)		
							       	  // Monthly Trend - AMV vs. Sonde(WV1)	
							       	  // Monthly Trend - AMV vs. Sonde(WV1)	
									  {title: "AMV vs. Sonde(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wv1_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wv1_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wv1_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wv1_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wv1_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wv1_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wv1_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wv1_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wv1_y_f42008" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. Sonde(WV2)		
							       	  // Monthly Trend - AMV vs. Sonde(WV2)	
							       	  // Monthly Trend - AMV vs. Sonde(WV2)	
									  {title: "AMV vs. Sonde(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wv2_y_f42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wv2_y_f42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wv2_y_f42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wv2_y_f42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wv2_y_f42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wv2_y_f42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wv2_y_f42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wv2_y_f42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wv2_y_f42008" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. NWP(IR1)		
							       	  // Monthly Trend - AMV vs. NWP(IR1)		
							       	  // Monthly Trend - AMV vs. NWP(IR1)	         
							       	  {title: "AMV vs. NWP(IR1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_ir1_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_ir1_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_ir1_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_ir1_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_ir1_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_ir1_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_ir1_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_ir1_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_ir1_y_n42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_ir1_y_n42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_ir1_y_n42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_ir1_y_n42011" , abbr:"AMV"}
								      ]},
							        
								      // Monthly Trend - AMV vs. NWP(SWIR)		
							       	  // Monthly Trend - AMV vs. NWP(SWIR)	
							       	  // Monthly Trend - AMV vs. NWP(SWIR)	
									  {title: "AMV vs. NWP(SWIR)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_swir_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_swir_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_swir_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_swir_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_swir_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_swir_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_swir_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_swir_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_swir_y_n42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_swir_y_n42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_swir_y_n42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_swir_y_n42011" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. NWP(VIS)		
							       	  // Monthly Trend - AMV vs. NWP(VIS)	
							       	  // Monthly Trend - AMV vs. NWP(VIS)	
									  {title: "AMV vs. NWP(VIS)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_vis_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_vis_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_vis_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_vis_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_vis_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_vis_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_vis_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_vis_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_vis_y_n42008" , abbr:"AMV"},
											{title: "All Lat. & Low Height",         key:"amv_vis_y_n42009" , abbr:"AMV"},
											{title: "Mid Lat. & Low Height",         key:"amv_vis_y_n42010" , abbr:"AMV"},
											{title: "Tropical Lat. & Low Height",    key:"amv_vis_y_n42011" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. NWP(WVA)		
							       	  // Monthly Trend - AMV vs. NWP(WVA)	
							       	  // Monthly Trend - AMV vs. NWP(WVA)	
									  {title: "AMV vs. NWP(WVA)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wva_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wva_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wva_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wva_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wva_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wva_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wva_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wva_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wva_y_n42008" , abbr:"AMV"}
								      ]},
									  
									  
									  // Monthly Trend - AMV vs. NWP(WV1)		
							       	  // Monthly Trend - AMV vs. NWP(WV1)	
							       	  // Monthly Trend - AMV vs. NWP(WV1)	
									  {title: "AMV vs. NWP(WV1)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wv1_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wv1_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wv1_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wv1_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wv1_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wv1_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wv1_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wv1_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wv1_y_n42008" , abbr:"AMV"}
								      ]},
									  
									  // Monthly Trend - AMV vs. NWP(WV2)		
							       	  // Monthly Trend - AMV vs. NWP(WV2)	
							       	  // Monthly Trend - AMV vs. NWP(WV2)	
									  {title: "AMV vs. NWP(WV2)", folder: true, hideCheckbox:true,//
								        children: [ 
											{title: "All Lat. & All Height",         key:"amv_wv2_y_n42000" , abbr:"AMV"},
											{title: "Mid Lat. & All Height",         key:"amv_wv2_y_n42001" , abbr:"AMV"},
											{title: "Tropical Lat. & All Height",    key:"amv_wv2_y_n42002" , abbr:"AMV"},
											{title: "All Lat. & High Height",        key:"amv_wv2_y_n42003" , abbr:"AMV"},
											{title: "Mid Lat. & High Height",        key:"amv_wv2_y_n42004" , abbr:"AMV"},
											{title: "Tropical Lat. & High Height",   key:"amv_wv2_y_n42005" , abbr:"AMV"},
											{title: "All Lat. & MIddle Height",      key:"amv_wv2_y_n42006" , abbr:"AMV"},
											{title: "Mid Lat. & MIddle Height",      key:"amv_wv2_y_n42007" , abbr:"AMV"},
											{title: "Tropical Lat. & MIddle Height", key:"amv_wv2_y_n42008" , abbr:"AMV"}
								      ]},
								  ]}		  
							      // Monthly Trend goes here
							      /////////////////////////
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
			                          {title: "Compare-MODIS",  key:"ai_zzz_m_f32900", abbr:"AI" },
			                          {title: "Compare OMI",   key:"ai_zzz_m_f32910", abbr:"AI"  }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS",   key:"ai_zzz_m_f42300", abbr:"AI"  },
			                          {title: "Compare OMI",   	key:"ai_zzz_m_f42310", abbr:"AI" }
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS",   key:"ai_zzz_y_f42300", abbr:"AI"  },
			                          {title: "Compare OMI",  	  key:"ai_zzz_y_f42310", abbr:"AI" }
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
										      {title: "Number",   	   key:"aod_zzz_m_f10000", abbr:"AOD"  },
										      {title: "Bias",  	   key:"aod_zzz_m_f10200", abbr:"AOD"  },
										      {title: "RMSE",   key:"aod_zzz_m_f10300", abbr:"AOD" }
										    ]
										  }
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",  	key:"aod_zzz_m_f20000", abbr:"AOD" }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",   	key:"aod_zzz_m_f42000", abbr:"AOD" }
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",  	  key:"aod_zzz_y_f42000", abbr:"AOD" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "운량 (CA)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statistical Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",     key:"ca_zzz_m_f10200", abbr:"CA"  },
			                          {title: "Compare Ground",   key:"ca_zzz_m_f10210", abbr:"CA" }
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  	key:"ca_zzz_m_f20000" , abbr:"CA"},
			                          {title: "Compare Ground",   key:"ca_zzz_m_f20010" , abbr:"CA"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  	   key:"ca_zzz_m_f42000" , abbr:"CA"},
			                          {title: "Compare Ground",   key:"ca_zzz_m_f42010" , abbr:"CA"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  		 key:"ca_zzz_y_f42000" , abbr:"CA"},
			                          {title: "Compare Ground",   key:"ca_zzz_y_f42010" , abbr:"CA"}
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "위성 관측 운량 (CF)", folder: true, hideCheckbox:true, expanded: true,
				                    children: [
				                      {title: "Statistical Map", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS", 	key:"cf_zzz_m_f10200", abbr:"CF" }
				                        ]
				                      },
				                      {title: "Daily Trend", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "All Lat.",  	   key:"cf_zzz_m_f42000", abbr:"CF"  },
										      {title: "Tropical Lat.",  	   key:"cf_zzz_m_f42001", abbr:"CF"  },
										      {title: "Middle Lat.",  key:"cf_zzz_m_f42002", abbr:"CF" }
										    ]
										  }
				                        ]
				                      },
				                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "All Lat.",   	   key:"cf_zzz_y_f42000", abbr:"CF"  },
										      {title: "Tropical Lat.",     key:"cf_zzz_y_f42001", abbr:"CF"  },
										      {title: "Middle Lat.",   key:"cf_zzz_y_f42002", abbr:"CF" }
										    ]
										  }
				                        ]
				                      }
				                    ]
				                  },
			                  {title: "구름 탐지 (CLD)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Scatter Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",   key:"cld_zzz_m_f32900", abbr:"CLD" }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",   key:"cld_zzz_m_f42100" , abbr:"CLD"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare MODIS",   key:"cld_zzz_y_f42100" , abbr:"CLD"}
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "구름 광학 두께 (COT)", folder: true, hideCheckbox:true, expanded: true,
				                    children: [
				                      {title: "Statistical Map", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS",   	key:"cot_zzz_m_f10200", abbr:"COT" }
				                        ]
				                      },
				                      {title: "Daily Trend", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS",   	key:"cot_zzz_m_f42000", abbr:"COT" }
				                        ]
				                      },
				                      {title: "Frequency Distribution", folder: true, hideCheckbox:true,
				                        children: [
		 								  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										    children: [
										      {title: "COT",     key:"cot_zzz_m_f45500", abbr:"COT"  },
										      {title: "COMS_MODIS COT",   key:"cot_zzz_m_f45501", abbr:"COT" }
										    ]
										  }
				                        ]
				                      },
				                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
				                        children: [
				                          {title: "Compare MODIS",  	key:"cot_zzz_y_f42000", abbr:"COT" }
				                        ]
				                      }
		                    	]
			                  },
			                  
			                  
     			       	  	  {title: "구름상 (CP)", folder: true, hideCheckbox:true, expanded: true,
			                  	children: [
									  {title: "Daily Trend", folder: true, hideCheckbox:true,
									    children: [
											  {title: "Compare MODIS", folder: true, hideCheckbox:true,
										      	children: [
										      	  {title: "All Lat.",           	key:"cp_zzz_m_f42200", abbr:"CP"  },
										      	  {title: "Tropical Lat.",      	key:"cp_zzz_m_f42201", abbr:"CP"  },
										      	  {title: "Middle Lat.",             key:"cp_zzz_m_f42202", abbr:"CP"  },
										      	  {title: "All Lat. & Water",   	key:"cp_zzz_m_f42203", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Water",   key:"cp_zzz_m_f42204", abbr:"CP"  },
										      	  {title: "Middle Lat. & Water",     key:"cp_zzz_m_f42205", abbr:"CP"  },
										      	  {title: "All Lat. & Ice",     	key:"cp_zzz_m_f42206", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Ice",     key:"cp_zzz_m_f42207", abbr:"CP"  },
										      	  {title: "Middle Lat. & Ice",       key:"cp_zzz_m_f42208", abbr:"CP"  },
										      	  {title: "All Lat. & Mixed",   	key:"cp_zzz_m_f42209", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Mixed",   key:"cp_zzz_m_f42210", abbr:"CP"  },
										      	  {title: "Middle Lat. & Mixed",     key:"cp_zzz_m_f42211", abbr:"CP"  }
										    	]
										  	  }
									    ]
									  },
									  {title: "Frequency Distribution", folder: true, hideCheckbox:true,
									    children: [
											  {title: "Compare MODIS", folder: true, hideCheckbox:true,
											    children: [
											      {title: "All Lat.",      key:"cp_zzz_m_f55500", abbr:"CP"  },
											      {title: "Tropical Lat.", key:"cp_zzz_m_f55501", abbr:"CP"  },
											      {title: "Middle Lat.",   key:"cp_zzz_m_f55502", abbr:"CP"  }
											    ]
										  	  }
									    ]
									  },
									  {title: "Distribution Plot", folder: true, hideCheckbox:true,
									    children: [
									      {title: "Compare MODIS",  	key:"cp_zzz_m_f42231", abbr:"CP" }
									    ]
									  },           
									  {title: "Monthly Trend", folder: true, hideCheckbox:true,
									    children: [
											  {title: "Compare MODIS", folder: true, hideCheckbox:true,
											    children: [
										      	  {title: "All Lat.",           	 key:"cp_zzz_y_f42200", abbr:"CP"  },
										      	  {title: "Tropical Lat.",      	 key:"cp_zzz_y_f42201", abbr:"CP"  },
										      	  {title: "Middle Lat.",             key:"cp_zzz_y_f42202", abbr:"CP"  },
										      	  {title: "All Lat. & Water",   	 key:"cp_zzz_y_f42203", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Water",   key:"cp_zzz_y_f42204", abbr:"CP"  },
										      	  {title: "Middle Lat. & Water",     key:"cp_zzz_y_f42205", abbr:"CP"  },
										      	  {title: "All Lat. & Ice",     	 key:"cp_zzz_y_f42206", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Ice",     key:"cp_zzz_y_f42207", abbr:"CP"  },
										      	  {title: "Middle Lat. & Ice",       key:"cp_zzz_y_f42208", abbr:"CP"  },
										      	  {title: "All Lat. & Mixed",   	 key:"cp_zzz_y_f42209", abbr:"CP"  },
										      	  {title: "Tropical Lat. & Mixed",   key:"cp_zzz_y_f42210", abbr:"CP"  },
										      	  {title: "Middle Lat. & Mixed",     key:"cp_zzz_y_f42211", abbr:"CP"  }
											    ]
											  }
									    ]
									  }
			                    ]
     			       	  	  },
			                  
     			       	  	  {title: "운형 (CT)", folder: true, hideCheckbox:true, expanded: true,
			                  	children: [
									  {title: "Daily Trend", folder: true, hideCheckbox:true,
									    children: [
											  {title: "Compare MODIS", folder: true, hideCheckbox:true,
											    children: [
											      {title: "ISCCP All Lat.",       key:"ct_zzz_m_f42200", abbr:"CT"  },
											      {title: "ISCCP Tropical Lat.",  key:"ct_zzz_m_f42201", abbr:"CT"  },
											      {title: "ISCCP Middle Lat.",    key:"ct_zzz_m_f42202", abbr:"CT"  },
											      {title: "SEVIRI All Lat.",      key:"ct_zzz_m_f42203", abbr:"CT"  },
											      {title: "SEVIRI Tropical Lat.", key:"ct_zzz_m_f42204", abbr:"CT"  },
											      {title: "SEVIRI Middle Lat.",   key:"ct_zzz_m_f42205", abbr:"CT"  }
											    ]
											  }
									    ]
									  },
									  {title: "Monthly Trend", folder: true, hideCheckbox:true,
									    children: [
											  {title: "Compare MODIS", folder: true, hideCheckbox:true,
											    children: [
											      {title: "ISCCP All Lat.",       key:"ct_zzz_y_f42200", abbr:"CT"  },
											      {title: "ISCCP Tropical Lat.",  key:"ct_zzz_y_f42201", abbr:"CT"  },
											      {title: "ISCCP Middle Lat.",    key:"ct_zzz_y_f42202", abbr:"CT"  },
											      {title: "SEVIRI All Lat.",      key:"ct_zzz_y_f42203", abbr:"CT"  },
											      {title: "SEVIRI Tropical Lat.", key:"ct_zzz_y_f42204", abbr:"CT"  },
											      {title: "SEVIRI Middle Lat.",   key:"ct_zzz_y_f42205", abbr:"CT"  }
											    ]
											  }
									    ]
									  }
			                    ]
     			       	  	  },
			                  
     			       	  	  {title: "운정 기압 (CTP)", folder: true, hideCheckbox:true, expanded: true,
			                  	children: [
									{title: "Statistical Map", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "COMS Mean",  key:"ctp_zzz_m_f10100", abbr:"CTP"  },
											      {title: "MODIS Mean", key:"ctp_zzz_m_f10101", abbr:"CTP"  },
											      {title: "Bias",       key:"ctp_zzz_m_f10200", abbr:"CTP"  },
											      {title: "COMS STD",   key:"ctp_zzz_m_f10500", abbr:"CTP"  }
										    	]
										  	}
									    ]
									},
									{title: "Density Plot", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      key:"ctp_zzz_m_f20000", abbr:"CTP"  },
											      {title: "Tropical Lat.", key:"ctp_zzz_m_f20001", abbr:"CTP"  },
											      {title: "Middle Lat.",   key:"ctp_zzz_m_f20002", abbr:"CTP"  }
										    	]
										  	},
										  	{title: "MODIS vs. COMS-MODIS", 	key:"ctp_zzz_m_f20003", abbr:"CTP" }
									    ]
									},
									{title: "Daily Trend", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      key:"ctp_zzz_m_f42000", abbr:"CTP"  },
											      {title: "Tropical Lat.", key:"ctp_zzz_m_f42001", abbr:"CTP"  },
											      {title: "Middle Lat.",   key:"ctp_zzz_m_f42002", abbr:"CTP"  }
										    	]
										  	}
									    ]
									},
									{title: "Distribution plot", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "Distribution by Lat.",      key:"ctp_zzz_m_f42700", abbr:"CTP"  },
											      {title: "Distribution by Diurnal",   key:"ctp_zzz_m_f42701", abbr:"CTP"  }
										    	]
										  	}
									    ]
									},
									//js 참고해야함
									{title: "Monthly Trend", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      key:"ctp_zzz_y_f42000", abbr:"CTP"  },
											      {title: "Tropical Lat.", key:"ctp_zzz_y_f42001", abbr:"CTP"  },
											      {title: "Middle Lat.",   key:"ctp_zzz_y_f42002", abbr:"CTP"  }
										    	]
										  	}
									    ]
									}
			                    ]
     			       	  	  },
			                  
     			       	  	  {title: "운정 온도 (CTT)", folder: true, hideCheckbox:true, expanded: true,
			                  	children: [
									{title: "Statistical Map", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "COMS Mean",   key:"ctt_zzz_m_f10100", abbr:"CTT"  },
											      {title: "MODIS Mean",  key:"ctt_zzz_m_f10101", abbr:"CTT"  },
											      {title: "Bias",        key:"ctt_zzz_m_f10200", abbr:"CTT"  },
											      {title: "COMS STD",    key:"ctt_zzz_m_f10500", abbr:"CTT"  }
										    	]
										  	}
									    ]
									},
									{title: "Density Plot", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      		 key:"ctt_zzz_m_f20000", abbr:"CTT"  },
											      {title: "Tropical Lat.", 		 key:"ctt_zzz_m_f20001", abbr:"CTT"  },
											      {title: "Middle Lat.",    	 key:"ctt_zzz_m_f20002", abbr:"CTT"  },
												  {title:"MODIS vs. COMS-MODIS", key:"ctt_zzz_m_f20003", abbr:"CTT" }
										    	]
										  	},
									    ]
									},
									{title: "Daily Trend", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      		 key:"ctt_zzz_m_f42000", abbr:"CTT"  },
											      {title: "Tropical Lat.", 		 key:"ctt_zzz_m_f42001", abbr:"CTT"  },
											      {title: "Middle Lat.",    	 key:"ctt_zzz_m_f42002", abbr:"CTT"  }
										    	]
										  	}
									    ]
									},
									{title: "Distribution plot", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "Distribution by Lat.",     key:"ctt_zzz_m_f42700", abbr:"CTT"  },
											      {title: "Distribution by Diurnal",  key:"ctt_zzz_m_f42701", abbr:"CTT"  }
										    	]
										  	}
									    ]
									},
									//js 참고해야함
									{title: "Monthly Trend", folder: true, hideCheckbox:true,
									    children: [
											{title: "Compare MODIS", folder: true, hideCheckbox:true,
										    	children: [
											      {title: "All Lat.",      		 key:"ctt_zzz_y_f42000", abbr:"CTT"  },
											      {title: "Tropical Lat.", 		 key:"ctt_zzz_y_f42001", abbr:"CTT"  },
											      {title: "Middle Lat.",    	 key:"ctt_zzz_y_f42002", abbr:"CTT"  }
										    	]
										  	}
									    ]
									}           
			                    ]
     			       	  	  },
			                  
			                  
			                  //fog goes here
     			       	  	  {title: "안개 (FOG)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statistical Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  		key:"fog_zzz_m_f11600" , abbr: "FOG"},
			                          {title: "Compare Ground",   key:"fog_zzz_m_f11610" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  		 key:"fog_zzz_m_f32900" , abbr: "FOG"},
			                          {title: "Compare Ground",   key:"fog_zzz_m_f32910" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS",  		key:"fog_zzz_m_f42500" , abbr: "FOG"},
			                          {title: "Compare Ground",   key:"fog_zzz_m_f42510" , abbr: "FOG"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", 	  key:"fog_zzz_y_f42500" , abbr: "FOG"},
			                          {title: "Compare Ground",   key:"fog_zzz_y_f42510" , abbr: "FOG"}
			                        ]
			                      }
			                    ]
			                  },     			       	  	  
			                  
     			       	  	  //
	     			       	  {title: "표면도달일사량 (INS)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Statistical Map", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare Ground", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Number",   key:"ins_zzz_m_f10000", abbr:"INS"  },
												      {title: "Bias",     key:"ins_zzz_m_f10200", abbr:"INS"  },
												      {title: "RMSE",     key:"ins_zzz_m_f10300", abbr:"INS"  }
											    	]
											  	}
										    ]
										},
										{title: "Density Plot", folder: true, hideCheckbox:true,
										    children: [
											  	{title: "Compare Ground", 	key:"ins_zzz_m_f20000", abbr:"INS" }
										    ]
										},
										{title: "Scatter plot", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare MODIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "속초",     key:"ins_090_m_f30000", abbr:"INS"  },
												      {title: "철원",     key:"ins_095_m_f30000", abbr:"INS"  },
												      {title: "동두천",   key:"ins_098_m_f30000", abbr:"INS"  },
												      {title: "문산",     key:"ins_099_m_f30000", abbr:"INS"  },
												      {title: "대관령",   key:"ins_100_m_f30000", abbr:"INS"  },
												      {title: "춘천",     key:"ins_101_m_f30000", abbr:"INS"  },
												      {title: "백령도",   key:"ins_102_m_f30000", abbr:"INS"  },
												      {title: "강릉",     key:"ins_105_m_f30000", abbr:"INS"  },
												      {title: "동해",     key:"ins_106_m_f30000", abbr:"INS"  },
												      {title: "서울",     key:"ins_108_m_f30000", abbr:"INS"  },
												      {title: "인천",     key:"ins_112_m_f30000", abbr:"INS"  },
												      {title: "원주",     key:"ins_114_m_f30000", abbr:"INS"  },
												      {title: "울릉도",   key:"ins_115_m_f30000", abbr:"INS"  },
												      {title: "수원",     key:"ins_119_m_f30000", abbr:"INS"  },
												      {title: "영월",     key:"ins_121_m_f30000", abbr:"INS"  },
												      {title: "충주",     key:"ins_127_m_f30000", abbr:"INS"  },
												      {title: "서산",     key:"ins_129_m_f30000", abbr:"INS"  },
												      {title: "울진",     key:"ins_130_m_f30000", abbr:"INS"  },
												      {title: "청주",     key:"ins_131_m_f30000", abbr:"INS"  },
												      {title: "대전",     key:"ins_133_m_f30000", abbr:"INS"  },
												      {title: "안동",     key:"ins_136_m_f30000", abbr:"INS"  },
												      {title: "상주",     key:"ins_137_m_f30000", abbr:"INS"  },
												      {title: "포항",     key:"ins_138_m_f30000", abbr:"INS"  },
												      {title: "군산",     key:"ins_140_m_f30000", abbr:"INS"  },
												      {title: "대구",     key:"ins_143_m_f30000", abbr:"INS"  },
												      {title: "전주",     key:"ins_146_m_f30000", abbr:"INS"  },
												      {title: "울산",     key:"ins_152_m_f30000", abbr:"INS"  },
												      {title: "마산/창원",key:"ins_155_m_f30000", abbr:"INS"  },
												      {title: "광주",     key:"ins_156_m_f30000", abbr:"INS"  },
												      {title: "부산",     key:"ins_159_m_f30000", abbr:"INS"  },
												      {title: "통영",     key:"ins_162_m_f30000", abbr:"INS"  },
												      {title: "무안",     key:"ins_164_m_f30000", abbr:"INS"  },
												      {title: "목포",     key:"ins_165_m_f30000", abbr:"INS"  },
												      {title: "여수",     key:"ins_168_m_f30000", abbr:"INS"  },
												      {title: "흑산도",   key:"ins_169_m_f30000", abbr:"INS"  },
												      {title: "완도",     key:"ins_170_m_f30000", abbr:"INS"  },
												      {title: "진도",     key:"ins_175_m_f30000", abbr:"INS"  },
												      {title: "제주",     key:"ins_184_m_f30000", abbr:"INS"  },
												      {title: "고산",     key:"ins_185_m_f30000", abbr:"INS"  },
												      {title: "성산",     key:"ins_187_m_f30000", abbr:"INS"  },
												      {title: "서귀포",   key:"ins_189_m_f30000", abbr:"INS"  },
												      {title: "진주",     key:"ins_192_m_f30000", abbr:"INS"  },
												      {title: "강화",     key:"ins_201_m_f30000", abbr:"INS"  },
												      {title: "양평",     key:"ins_202_m_f30000", abbr:"INS"  },
												      {title: "이천",     key:"ins_203_m_f30000", abbr:"INS"  },
												      {title: "인제",     key:"ins_211_m_f30000", abbr:"INS"  },
												      {title: "홍천",     key:"ins_212_m_f30000", abbr:"INS"  },
												      {title: "삼척",     key:"ins_214_m_f30000", abbr:"INS"  },
												      {title: "태백",     key:"ins_216_m_f30000", abbr:"INS"  },
												      {title: "제천",     key:"ins_221_m_f30000", abbr:"INS"  },
												      {title: "보은",     key:"ins_226_m_f30000", abbr:"INS"  },
												      {title: "천안",     key:"ins_232_m_f30000", abbr:"INS"  },
												      {title: "보령",     key:"ins_235_m_f30000", abbr:"INS"  },
												      {title: "부여",     key:"ins_236_m_f30000", abbr:"INS"  },
												      {title: "금산",     key:"ins_238_m_f30000", abbr:"INS"  },
												      {title: "부안",     key:"ins_243_m_f30000", abbr:"INS"  },
												      {title: "임실",     key:"ins_244_m_f30000", abbr:"INS"  },
												      {title: "정읍",     key:"ins_245_m_f30000", abbr:"INS"  },
												      {title: "남원",     key:"ins_247_m_f30000", abbr:"INS"  },
												      {title: "장수",     key:"ins_248_m_f30000", abbr:"INS"  },
												      {title: "창원",     key:"ins_255_m_f30000", abbr:"INS"  },
												      {title: "순천/주암",key:"ins_256_m_f30000", abbr:"INS"  },
												      {title: "장흥",     key:"ins_260_m_f30000", abbr:"INS"  },
												      {title: "해남",     key:"ins_261_m_f30000", abbr:"INS"  },
												      {title: "고흥",     key:"ins_262_m_f30000", abbr:"INS"  },
												      {title: "봉화",     key:"ins_271_m_f30000", abbr:"INS"  },
												      {title: "영주",     key:"ins_272_m_f30000", abbr:"INS"  },
												      {title: "문경",     key:"ins_273_m_f30000", abbr:"INS"  },
												      {title: "청송군",   key:"ins_276_m_f30000", abbr:"INS"  },
												      {title: "영덕",     key:"ins_277_m_f30000", abbr:"INS"  },
												      {title: "의성",     key:"ins_275_m_f30000", abbr:"INS"  },
												      {title: "구미",     key:"ins_279_m_f30000", abbr:"INS"  },
												      {title: "영천",     key:"ins_281_m_f30000", abbr:"INS"  },
												      {title: "경주",     key:"ins_283_m_f30000", abbr:"INS"  },
												      {title: "거창",     key:"ins_284_m_f30000", abbr:"INS"  },
												      {title: "합천",     key:"ins_285_m_f30000", abbr:"INS"  },
												      {title: "밀양",     key:"ins_288_m_f30000", abbr:"INS"  },
												      {title: "산청",     key:"ins_289_m_f30000", abbr:"INS"  },
												      {title: "거제",     key:"ins_294_m_f30000", abbr:"INS"  },
												      {title: "남해",     key:"ins_295_m_f30000", abbr:"INS"  }
											    	]
											  	}
										    ]
										},
										{title: "Daily Trend", folder: true, hideCheckbox:true,
										    children: [
											  	{title: "Compare Ground", 	key:"ins_zzz_m_f42000", abbr:"INS" }
										    ]
										},
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
										    children: [
											  	{title: "Compare Ground", 	key:"ins_zzz_y_f42000", abbr:"INS" }
										    ]
										}
				                    ]
	   			       	  	  },
				                  
	   			       	  	  {title: "지표면 온도 (LST)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Statistical Map", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias(All)",     key:"lst_zzz_m_f10200", abbr:"LST"  },
												      {title: "Bias(Day)",     key:"lst_zzz_m_f10202", abbr:"LST"  },
												      {title: "Bias(Night)",   key:"lst_zzz_m_f10201", abbr:"LST"  },
												      {title: "RMSE(Day)",     key:"lst_zzz_m_f10302", abbr:"LST"  },
												      {title: "RMSE(Night)",   key:"lst_zzz_m_f10301", abbr:"LST"  }
											    	]
											  	},
												{title: "Compare MODIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias(All)",     key:"lst_zzz_m_f10210", abbr:"LST"  },
												      {title: "Bias(Day)",     key:"lst_zzz_m_f10212", abbr:"LST"  },
												      {title: "Bias(Night)",   key:"lst_zzz_m_f10211", abbr:"LST"  },
												      {title: "RMSE(Day)",     key:"lst_zzz_m_f10312", abbr:"LST"  },
												      {title: "RMSE(Night)",   key:"lst_zzz_m_f10311", abbr:"LST"  }
											    	]
											  	}
										    ]
										},
										{title: "Density Plot", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "All",     key:"lst_zzz_m_f20000", abbr:"LST"  },
												      {title: "Day",     key:"lst_zzz_m_f20002", abbr:"LST"  },
												      {title: "Night",   key:"lst_zzz_m_f20001", abbr:"LST"  }
											    	]
											  	},
												{title: "Compare MODIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "All",     key:"lst_zzz_m_f20010", abbr:"LST"  },
												      {title: "Day",     key:"lst_zzz_m_f20012", abbr:"LST"  },
												      {title: "Night",   key:"lst_zzz_m_f20011", abbr:"LST"  }
											    	]
											  	}
										    ]
										},
										{title: "Daily Trend", folder: true, hideCheckbox:true,
										    children: [
											  	{title: "Compare AWS", 	key:"lst_zzz_m_f42000", abbr:"LST" },
											  	{title: "Compare MODIS",key:"lst_zzz_m_f42010", abbr:"LST" }
										    ]
										},
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
										    children: [
											  	{title: "Compare AWS", 	key:"lst_zzz_y_f42000", abbr:"LST" },
											  	{title: "Compare MODIS",key:"lst_zzz_y_f42010", abbr:"LST" }
										    ]
										}
				                    ]
	   			       	  	  },
				                  
	   			       	  	  {title: "지구 방출 복사량 (OLR)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Statistical Map", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "OLR-1(Bias)",     key:"olr_zzz_m_f10200", abbr:"OLR"  },
												      {title: "OLR-2(Bias)",     key:"olr_zzz_m_f10201", abbr:"OLR"  },
												      {title: "OLR-3(Bias)",     key:"olr_zzz_m_f10202", abbr:"OLR"  },
												      {title: "OLR-Best(Bias)",  key:"olr_zzz_m_f10203", abbr:"OLR"  },
												      {title: "OLR-1(RMSE)",     key:"olr_zzz_m_f10300", abbr:"OLR"  },
												      {title: "OLR-2(RMSE)",     key:"olr_zzz_m_f10301", abbr:"OLR"  },
												      {title: "OLR-3(RMSE)",     key:"olr_zzz_m_f10302", abbr:"OLR"  },
												      {title: "OLR-Best(RMSE)",  key:"olr_zzz_m_f10303", abbr:"OLR"  }
											    	]
											  	}
										    ]
										},
										{title: "Density Plot", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare CERES", folder: true, hideCheckbox:true,
											    	children: [
									    	           {title: "OLR-1",     key:"olr_zzz_m_f20000", abbr:"OLR"  },
													   {title: "OLR-2",     key:"olr_zzz_m_f20001", abbr:"OLR"  },
													   {title: "OLR-3",     key:"olr_zzz_m_f20002", abbr:"OLR"  },
													   {title: "OLR-Best",  key:"olr_zzz_m_f20003", abbr:"OLR"  }
											    	]
											  	}
										    ]
										},
										{title: "Daily Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare CERES", folder: true, hideCheckbox:true,
											    	children: [
									    	           {title: "OLR-1",     key:"olr_zzz_m_f42000", abbr:"OLR"  },
													   {title: "OLR-2",     key:"olr_zzz_m_f42001", abbr:"OLR"  },
													   {title: "OLR-3",     key:"olr_zzz_m_f42002", abbr:"OLR"  },
													   {title: "OLR-Best",  key:"olr_zzz_m_f42003", abbr:"OLR"  }
											    	]
											  	}
										    ]
										},
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare CERES", folder: true, hideCheckbox:true,
											    	children: [
									    	           {title: "OLR-1",     key:"olr_zzz_y_f42000", abbr:"OLR"  },
													   {title: "OLR-2",     key:"olr_zzz_y_f42001", abbr:"OLR"  },
													   {title: "OLR-3",     key:"olr_zzz_y_f42002", abbr:"OLR"  },
													   {title: "OLR-Best",  key:"olr_zzz_y_f42003", abbr:"OLR"  }
											    	]
											  	}
										    ]
										}
				                    ]
	   			       	  	  },
				                  
	   			       	  	  {title: "강우 강도 (RI)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Statistical Map", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias",  key:"ri_zzz_m_f10200", abbr:"RI"  },
												      {title: "RMSE",  key:"ri_zzz_m_f10300", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMI", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias",  key:"ri_zzz_m_f10210", abbr:"RI"  },
												      {title: "RMSE",  key:"ri_zzz_m_f10310", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias",  key:"ri_zzz_m_f10220", abbr:"RI"  },
												      {title: "RMSE",  key:"ri_zzz_m_f10320", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare AMSR2", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias",  key:"ri_zzz_m_f10230", abbr:"RI"  },
												      {title: "RMSE",  key:"ri_zzz_m_f10330", abbr:"RI"  }
											    	]
											  	}
										    ]
										},
										{title: "Density Plot", folder: true, hideCheckbox:true,
									    	children: [
							    	           {title: "Compare AWS",     key:"ri_zzz_m_f20000", abbr:"RI"  },
											   {title: "Compare SSMI",    key:"ri_zzz_m_f20010", abbr:"RI"  },
											   {title: "Compare SSMIS",   key:"ri_zzz_m_f20020", abbr:"RI"  },
											   {title: "Compare AMSR2",   key:"ri_zzz_m_f20030", abbr:"RI"  }
									    	]
										},
										{title: "Daily Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_m_f42000", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_m_f42600", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMI", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_m_f42010", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_m_f42610", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_m_f42020", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_m_f42620", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare AMSR2", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_m_f42030", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_m_f42630", abbr:"RI"  }
											    	]
											  	}
										    ]
										},
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare AWS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_y_f42000", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_y_f42600", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMI", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_y_f42010", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_y_f42610", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare SSMIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_y_f42020", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_y_f42620", abbr:"RI"  }
											    	]
											  	},
												{title: "Compare AMSR2", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "TS1",  key:"ri_zzz_y_f42030", abbr:"RI"  },
												      {title: "TS2",  key:"ri_zzz_y_f42630", abbr:"RI"  }
											    	]
											  	}
										    ]
										}
				                    ]
	   			       	  	  },
	   			       	  	  {title: "해빙 및 적설 (SSI)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Daily Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare IMS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Snow",  key:"ssi_zzz_m_f42500", abbr:"SSI"  },
												      {title: "Ice",   key:"ssi_zzz_m_f42501", abbr:"SSI"  }
											    	]
											  	},
												{title: "Compare MODIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Snow",  key:"ssi_zzz_m_f42510", abbr:"SSI"  },
												      {title: "Ice",   key:"ssi_zzz_m_f42511", abbr:"SSI"  }
											    	]
											  	}
										    ]
										},
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare IMS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Snow",  key:"ssi_zzz_y_f42500", abbr:"SSI"  },
												      {title: "Ice",   key:"ssi_zzz_y_f42501", abbr:"SSI"  }
											    	]
											  	},
												{title: "Compare MODIS", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Snow",  key:"ssi_zzz_y_f42510", abbr:"SSI"  },
												      {title: "Ice",   key:"ssi_zzz_y_f42511", abbr:"SSI"  }
											    	]
											  	}
										    ]
										}
				                    ]
	   			       	  	  },
	   			       	  	  {title: "해수면 온도 (SST)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Statistical Map", folder: true, hideCheckbox:true,
										    children: [
												{title: "Compare Buoy", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias(All)",  key:"sst_zzz_m_f10200", abbr:"SST"  },
												      {title: "Bias(Day)",  key:"sst_zzz_m_f10202", abbr:"SST"  },
												      {title: "Bias(Night)",key:"sst_zzz_m_f10201", abbr:"SST"  },
												      {title: "RMSE(Day)",  key:"sst_zzz_m_f10302", abbr:"SST"  },
												      {title: "RMSE(Night)",key:"sst_zzz_m_f10301", abbr:"SST"  }
											    	]
											  	},
												{title: "Compare OSTIA", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "Bias(All)",  key:"sst_zzz_m_f10210", abbr:"SST"  },
												      {title: "RMSE(All)",  key:"sst_zzz_m_f10303", abbr:"SST"  }
											    	]
											  	}
										    ]
										},
										{title: "Density Plot", folder: true, hideCheckbox:true,
									    	children: [
							    	           {title: "Compare Buoy", folder: true, hideCheckbox:true,
											    	children: [
												      {title: "All",  key:"sst_zzz_m_f20000", abbr:"SST"  },
												      {title: "Day",  key:"sst_zzz_m_f20002", abbr:"SST"  },
												      {title: "Night",key:"sst_zzz_m_f20001", abbr:"SST"  }
											    	]
											   },
							    	           {title: "Compare OSTIA",     key:"sst_zzz_m_f20010", abbr:"SST"  },
									    	]
										},
										{title: "Mean Difference", folder: true, hideCheckbox:true,
									    	children: [
							    	           {title: "Compare Buoy",     key:"sst_zzz_m_f40200", abbr:"SST"  }
									    	]
										},
										{title: "Daily Trend", folder: true, hideCheckbox:true,
									    	children: [
							    	           {title: "Compare Buoy",      key:"sst_zzz_m_f42000", abbr:"SST"  },
							    	           {title: "Compare OSTIA",     key:"sst_zzz_m_f42010", abbr:"SST"  }
									    	]
										},
										{title: "Monthlh Trend", folder: true, hideCheckbox:true,
									    	children: [
							    	           {title: "Compare Buoy",      key:"sst_zzz_y_f42000", abbr:"SST"  },
							    	           {title: "Compare OSTIA",     key:"sst_zzz_y_f42010", abbr:"SST"  }
									    	]
										}
				                    ]
	   			       	  	  },
	   			       	  	  {title: "가강수량 (TPW)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Scatter Plot", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"tpw_zzz_m_f30000", abbr:"TPW"  }
											]
										},           
										{title: "Daily Trend", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"tpw_zzz_m_f42000", abbr:"TPW"  }
											]
										},           
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"tpw_zzz_y_f42000", abbr:"TPW"  }
											]
										}           
				                    ]
	   			       	  	  },
	   			       	  	  {title: "상층수증기량 (UTH)", folder: true, hideCheckbox:true, expanded: true,
				                  	children: [
										{title: "Scatter Plot", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"uth_zzz_m_f30000", abbr:"UTH"  }
											]
										},           
										{title: "Daily Trend", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"uth_zzz_m_f42000", abbr:"UTH"  }
											]
										},           
										{title: "Monthly Trend", folder: true, hideCheckbox:true,
											children: [
										       {title: "Compare Sonde",     key:"uth_zzz_y_f42000", abbr:"UTH"  }
											]
										}                   
				                    ]
	   			       	  	  }
     			       	  	  
			                  
			                  
			                  
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
					 //alert('path:' + item.node.data.key);
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
	    <a href="#" id="btnDeselectAll_<c:out value='${param.identifier}'/>">Remove all</a> -
	    <a href="#" id="btnExpandAll_<c:out value='${param.identifier}'/>">Expand all</a> - 
	    <a href="#" id="btnCollapseAll_<c:out value='${param.identifier}'/>">Collapse all</a>
	  </p>
	  <!-- 
	  <div>Selected keys: <span class="echoSelection2">-</span></div>
    identifier
	   -->
	
	  <div id="treeWithCheckbox_<c:out value="${param.identifier}"/>" style="padding-left:7px;"></div>
