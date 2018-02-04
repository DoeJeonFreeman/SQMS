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
	
<!-- 
	<c set value='${param.identifier}' var="tabID"/>
	<input id="tabIndexID" type="hidden" value="${tabID}"/>
 -->	
	
	<script type="text/javascript">
		
/* 		
 * 		it doesnt work
 		function getSelectedVarialbes(idx){
//			 var selNodes = $("#treeWithCheckbox_" +idx ).fancytree("getTree").getSelectedNodes();
			 var selNodes = $("#treeWithCheckbox_" +idx ).fancytree("getSelectedNodes");
			 var meKeys = $.map(selNodes, function(node){
				return node.key;
			});
			sysout('==[begin]========getSelectedVarialbes(idx)==========================//'); 
			sysout(meKeys); 
			sysout('==[end]==========getSelectedVarialbes(idx)===========================//'); 
			return meKeys;
		}
 */
	
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
			                  {title: "Level1A 품질지표", folder: true, hideCheckbox:true, expanded: false,
			                    children: [
			                      {title: "Visible SNR", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Visible SNR", key: "L1A-QI01_0" }
			                          /* 
			                          {title: "Detector 1", key: "L1A-QI01_0" }
			                          ,{title: "Detector 2", key: "L1A-QI01_1" },
			                          {title: "Detector 3", key: "L1A-QI01_2" },
			                          {title: "Detector 4", key: "L1A-QI01_3" },
			                          {title: "Detector 5", key: "L1A-QI01_4" },
			                          {title: "Detector 6", key: "L1A-QI01_5" },
			                          {title: "Detector 7", key: "L1A-QI01_6" },
			                          {title: "Detector 8", key: "L1A-QI01_7" } */
			                        ]
			                      },
			                      {title: "Visible Radiance", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 1", key: "L1A-QI02_0" },
			                          {title: "Detector 2", key: "L1A-QI02_1" },
			                          {title: "Detector 3", key: "L1A-QI02_2" },
			                          {title: "Detector 4", key: "L1A-QI02_3" },
			                          {title: "Detector 5", key: "L1A-QI02_4" },
			                          {title: "Detector 6", key: "L1A-QI02_5" },
			                          {title: "Detector 7", key: "L1A-QI02_6" },
			                          {title: "Detector 8", key: "L1A-QI02_7" }
			                        ]
			                      },
			                      {title: "Visible PRNU", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 1", key: "L1A-QI03_0" },
			                          {title: "Detector 2", key: "L1A-QI03_1" },
			                          {title: "Detector 3", key: "L1A-QI03_2" },
			                          {title: "Detector 4", key: "L1A-QI03_3" },
			                          {title: "Detector 5", key: "L1A-QI03_4" },
			                          {title: "Detector 6", key: "L1A-QI03_5" },
			                          {title: "Detector 7", key: "L1A-QI03_6" },
			                          {title: "Detector 8", key: "L1A-QI03_7" }
			                        ]
			                      },
			                      {title: "IR Radiance", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 1", key: "L1A-QI04_0" },
			                          {title: "Detector 2", key: "L1A-QI04_1" }
			                        ]
			                      },
			                      {title: "IR NEDT", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "SWIR NEDT", key: "L1A-QI05_2" },
			                          {title: "WV NEDT",  key: "L1A-QI05_3" },
			                          {title: "IR1 NEDT", key: "L1A-QI05_4" },
			                          {title: "IR2 NEDT", key: "L1A-QI05_5" }
			                        ]
			                      },
			                      {title: "IR PRNU", folder: true, hideCheckbox:true,
			                        children: [
			                        	 {title: "SWIR PRNU", 	 key: "L1A-QI06_2" },
			                          {title: "WV PRNU",  key: "L1A-QI06_3" },
			                          {title: "IR1 PRNU", key: "L1A-QI06_4" },
			                          {title: "IR2 PRNU", key: "L1A-QI06_5" }
			                        ]
			                      },
			                      {title: "Moon Slope", folder: true, hideCheckbox:true,
			                        children: [
			                        	 {title: "Detector 1", key: "L1A-QI07_0" },
			                          {title: "Detector 2", key: "L1A-QI07_1" },
			                          {title: "Detector 3", key: "L1A-QI07_2" },
			                          {title: "Detector 4", key: "L1A-QI07_3" },
			                          {title: "Detector 5", key: "L1A-QI07_4" },
			                          {title: "Detector 6", key: "L1A-QI07_5" },
			                          {title: "Detector 7", key: "L1A-QI07_6" },
			                          {title: "Detector 8", key: "L1A-QI07_7" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "Level1A 환경정보", folder: true, hideCheckbox:true, expanded: false,
			                    children: [
			                      {title: "Telescope Primary Temperature", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Temperature", key: "L1A-EV01_25" }
			                        ]
			                      },
			                      {title: "Louver Radiator Temperature", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Temperature", key: "L1A-EV02_26" }
			                        ]
			                      },
			                      {title: "Telescope Secondary Temperature", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Temperature 1", key: "L1A-EV03_34" },
			                          {title: "Temperature 2", key: "L1A-EV03_73" },
			                          {title: "Temperature 3", key: "L1A-EV03_72" }
			                        ]
			                      },
			                      {title: "Scan Mirror Temperature", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Temperature", key: "L1A-EV04_36" }
			                        ]
			                      },
			                      {title: "Primary Baffle Temperature", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Temperature 1", key: "L1A-EV05_74" },
			                          {title: "Temperature 2", key: "L1A-EV05_75" }
			                        ]
			                      },
			                      {title: "E-W Servo current", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Current", key: "L1A-EV06_6" }
			                        ]
			                      },
			                      {title: "N-S Servo current", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Current", key: "L1A-EV07_20" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "Level1B 품질지표", folder: true, hideCheckbox:true, expanded: false,
			                    children: [
			                        /* 
			                      {title: "N-S Residual", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "None", key: "L1B-QI01_0" }
			                        ] 
			                      },
			                      */
			                      {title: "Number of Valid Landmarks", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "No. Landmarks", key: "L1B-QI02_0" }
			                        ]
			                      },
			                      {title: "Residual Average (EW/NS)", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Average", key: "L1B-QI03_0" }
			                        ]
			                      },
			                      {title: "Residual Standard Deviation (EW/NS)", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "E-W", key: "L1B-QI04_0" },
			                          {title: "N-S", key: "L1B-QI04_1" }
			                        ]
			                      },
			                      {title: "Residual Quadratic Distance", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Quadratic Distance", key: "L1B-QI05_0" }
			                        ]
			                      }
			                      /*
			                      ,
			                      {title: "Residual Statistics per ROI", folder: true, hideCheckbox:true,
			                         children: [
			                          {title: "None", key: "L1A-QI06_0" }
			                        ]
			                      },
			                      {title: "IMC Data", folder: true, hideCheckbox:true,
			                         
			                       children: [
			                          {title: "None", key: "L1A-QI07_0" }
			                        ] 
			                      }
			                      */
			                    ]
			                  },
			                  {title: "Level1B 환경정보", folder: true, hideCheckbox:true, expanded: false,
			                    children: [
			                      {title: "Spacecraft Position (at Image Center)", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Center X", key: "L1B-EV01_0" },
			                        ]
			                      },
			                      //Spacecraft Attitude (AOCS Local Orbital Frame)
			                      {title: "Spacecraft Attitude", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Attitude(deg)", key: "L1B-EV02_0" }
			                        ]
			                      },
			                      /*
			                      {title: "Pixel UTC (Last)", folder: true, hideCheckbox:true,
			                      },
			                      {title: "Spacecraft Veclocity ", folder: true, hideCheckbox:true,
			                      },
			                      */
			                    ]
			                  }
			                 //Level 2 Daily validation 
			                 //Level 2 Daily validation 
               				 ,{title: "Level 2 일검증결과 ", folder: true, hideCheckbox:true, expanded: false,
			                    children: [
			                      {title: "AI", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. OMI", key: "L2-QI04_0" }
			                        ]
			                      },
			                      {title: "CA", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. GTS", key: "L2-QI01_0" }
			                        ]
			                      },
			                      {title: "CLD", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. MOD35", key: "L2-QI02_0" }
			                        ]
			                      },
			                      {title: "FOG", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. GTS",    key: "L2-QI03_0" },
			                          {title: "COMS vs. Ground", key: "L2-QI03_1" }
			                        ]
			                      },
			                      {title: "RI", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. AWS", key: "L2-QI05_0" }
			                        ]
			                      },
			                      {title: "SST", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. Buoy", key: "L2-QI06_0" }
			                        ]
			                      },
			                      
			                      // 2017. 09. 23.
			                      // 2017. 09. 23.
			                      {title: "AOD", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. MOD4", key: "L2-QI10_0" }
			                        ]
			                      },
			                      {title: "INS", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. Ground", key: "L2-QI11_0" }
			                        ]
			                      },
			                      {title: "LST", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. MYD11", key: "L2-QI12_0" }
			                        ]
			                      },
			                      {title: "OLR", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "OLR BEST vs. CERES", key: "L2-QI13_0" },
			                          {title: "OLR 1 vs. CERES", 	   key: "L2-QI13_1" },
			                          {title: "OLR 2 vs. CERES",    key: "L2-QI13_2" },
			                          {title: "OLR 3 vs. CERES",    key: "L2-QI13_3" }
			                        ]
			                      },
			                      {title: "SSI", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. IMS Sea ice", 	   key: "L2-QI14_0" },
			                          {title: "COMS vs. IMS Snow cover",  key: "L2-QI14_1" }
			                        ]
			                      },
			                      {title: "TPW", folder: true, hideCheckbox:true, expanded: false,
			                        children: [
			                          {title: "COMS vs. Sonde", key: "L2-QI15_0" }
			                        ]
			                      },
			                      {title: "UTH", folder: true, hideCheckbox:true, expanded: false ,
			                        children: [
			                          {title: "COMS vs. Sonde", key: "L2-QI16_0" }
			                        ]
			                      }
			                   	  // 2017. 09. 23.
			                   	  // 2017. 09. 23.
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
		    	 checkbox: true,
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
				
		         select: function(event, item) {
		        	 var idx = $("#tabs").tabs('option', 'active');
					 var targetTab = '#TSCWrapper' + "<c:out value='${param.identifier}'/>";
					 var selected = [];
					 if( ! item.node.folder ){
						//doPostMonthlyValidationImageOnTheWall(targetTab, selected,$("#meNMSCDemo").val());
						sysout(item);
						
						if (item.node.selected){
							

						    selected.push(item.node.key);
							
							drawTimeseries(targetTab, selected,$("#meNMSCDemo").val());
							sysout('[map.keys().length after drawTimesereis() ] ' + map.size());
							$.each( map.keys(), function( i, key){
								sysout(i +' : '+ key)
							}); 		
									
						}else{
							var idx = 't' + "<c:out value='${param.identifier}'/>" + '_';
							var targetTab = '#TSCWrapper' + idx;
							
							$('#' + idx + item.node.key).remove();
							var chartId4map = idx+  'ts_'+item.node.key;
							map.remove(chartId4map);
							sysout("unchecked.remove() " + idx + item.node.key);
							sysout('==> remove [' + chartId4map + '] from maps');
							$.each( map.keys(), function( i, key){
								sysout(i +' : '+ key)
							}); 
						} 
						WinMove(); 
					 }
					 
/* 		           // Display list of selected nodes
		           var selNodes = data.tree.getSelectedNodes();
		           sysout(selNodes);
		           // convert to title/key array
		           var selKeys = $.map(selNodes, function(node){
		        	   sysout("[" + node.key + "]: '" + node.title + "'");
		                return "[" + node.key + "]: '" + node.title + "'";
		             });
		          // $(".echoSelection2").text(selKeys.join(", "));
		           sysout('==varSelected========================================================');
		           sysout(selKeys.join(",\n")); */
		         },
		         click: function(event, data) {
		             if( ! data.node.folder ){
		               data.node.toggleSelected();
		             }
		         }, 
		        /*  
		         dblclick: function(event, item) {
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
		          */
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
				e.preventDefault();
				
				var tabIndex = $("#tabs").tabs('option', 'active') ;
				var cbName = $(this).closest('div.meDraggableItem').attr('id'); 
				sysout('[captured] '+cbName);
				
				//substitute fancytree for checkboxes 2016.12.05.
				//substitute fancytree for checkboxes 2016.12.05.
				//$("#OPT_"+tabIndex +" input[name='" + cbName.substr(cbName.indexOf("_")+1) + "']").prop('checked',false); //	or .removeAttr('checked');
				var key = cbName.substr(cbName.indexOf("_")+1);
				sysout('[key] '+key);
//				$("#OPT_"+tabIndex).fancytree("getTree").getNodeByKey(key).setActive(false);
				$("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree("getTree").getNodeByKey(key).setSelected(false);
				$('#'+cbName).remove(); //remove chartWrapperHTML
				
				var leadingStr = 't' + tabIndex + '_ts_';
				map.remove(leadingStr  + cbName.substr(cbName.indexOf("_")+1)); //remove chart from maps 
				sysout("#OPT_"+tabIndex +" input[name='" + cbName.substr(cbName.indexOf("_")+1) + "']")
				sysout("==>close-window.remove() " + cbName); 
				sysout("====>cb.removeAttr(checked) "   + cbName.substr(cbName.indexOf("_")+1) ); 
				sysout('======> remove [' +leadingStr  + cbName.substr(cbName.indexOf("_")+1) + '] from maps'); 
				sysout(map);
			});
		  	
			var tabIndexID ="<c:out value='${param.identifier}'/>";
		  	/* $("#treeWithCheckbox_0").fancytree("getTree").getNodeByKey('L1A-QI01_0').setSelected(true); */
		  	var params = getUrlParams();
			if(tabIndexID*1 == 0){
				sysout(params)
				if(params.productNodeID != undefined){
					sysout('>>>[productNodeID] is :: ' + params.productNodeID);
					if(params.startDate != undefined){
						
						var latestStuff = ($("#meNMSCDemo").val().split('-').join(''))*1;
						var paramDate = ((params.startDate).split('-').join(''))*1;
						
						if(paramDate <= latestStuff){
							$('#meNMSCDemo').val(params.startDate);
						}
						
					}
					if(params.period != undefined){
						var preiods = ["DAILY","WEEKLY","MONTHLY","QUARTERLY"];
						if($.inArray(params.period.toUpperCase(), preiods) != -1){
							$('#chartingPeriodSelector .selected').attr('value',params.period.toUpperCase());
			        			$('#chartingPeriodSelector .selected').text(params.period.toUpperCase());
						}
					}
					
					$("#treeWithCheckbox_0").fancytree("getTree").getNodeByKey(params.productNodeID).setSelected(true); 				
				}
			}
		      
	 	});
	</script>
	
	<!-- Define where the tree should appear -->
	<!-- 
      <h5><a href="#" id="logger_<c out value='${param.identifier}'/>">haha</a></h5>
	 -->
	  <p style="padding-left:12px; font-size: 13px;">
	    <a href="#" id="btnExpandAll_<c:out value='${param.identifier}'/>">전체 펼치기</a> - 
	    <a href="#" id="btnCollapseAll_<c:out value='${param.identifier}'/>">전체 접기</a> - 
	    <a href="#" id="btnDeselectAll_<c:out value='${param.identifier}'/>">그래프 전체 지우기</a>
	  </p>
	  <!-- 
	  <div>Selected keys: <span class="echoSelection2">-</span></div>
    identifier
	   -->
	
	  <div id="treeWithCheckbox_<c:out value="${param.identifier}"/>" style="padding-left:7px;"></div>
