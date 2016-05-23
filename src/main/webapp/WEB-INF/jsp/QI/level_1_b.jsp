<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>품질지표 Level 1 B</title>
	
	<script src="<c:url value="/js/jquery/jquery-1.9.1.js"/>"></script>	
    <script src="<c:url value="/resource/js/bootstrap.min.js"/>"></script>
	
    <!-- tmpraory UI 
    -->
    <link href="<c:url value="/css/style_v2.css"/>" rel="stylesheet">
    
    <!-- JQuery UI -->
    <link href="<c:url value="/js/jquery/ui/jquery-ui.css"/>" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resource/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resource/css/modern-business.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resource/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">	
    
	<!-- datePicker -->
	<link href="<c:url value="/js/daterangepicker/daterangepicker.css"/>" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/moment.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/daterangepicker.js"/>"></script>
    <!-- dateJS -->
	<script type="text/javascript" src="<c:url value="/js/jquery/date.js"/>"></script>
    <!-- JQuery UI -->
	<script type="text/javascript" src="<c:url value="/js/jquery/ui/jquery-ui-1111.js"/>"></script>
	
	<!-- meEssential me decision was based upon two considerations (a: init order b:)-->
	<script src="<c:url value="/js/meEssential.js"/>"></script>
    
	<!-- 2c.doe.hicharts -->
	<!-- 
	<script src="http://code.highcharts.com/highcharts.src.js"></script>
	<script src="http://code.highcharts.com/highcharts-more.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	 -->
	
	<script src="<c:url value="/js/highchart/highcharts.js"/>"></script>
	<script src="<c:url value="/js/highchart/highcharts-more.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/exporting.js"/>"></script>
	<script type="text/javascript">
	
		
		String.prototype.endsWith = function(suffix) {
	   		return this.indexOf(suffix, this.length - suffix.length) !== -1;
		};
		
		function requestData_NVL(dateActual, imgMode, ROIID,targetDiv){
			var currDetector = [];
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: '<c:url value='/' />timeseries/retrieval/L_1_B_NVL',
				data: 'targetDate=' + dateActual + '&imgMode=1&menuId=l1b&submenuId=nVL',
		        success: function(jsonData) {
					if(jsonData.length==0)return;
					var _vsnrChart = $('#'+targetDiv).highcharts(); 
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var dateString = vrDataObj[i].DSTR;
							var arr = dateString.split(" ");
							var dStr = arr[0].split("-");
							var tStr = arr[1].split(":");
							var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
							eachData.push([d,parseNumericVal(vrDataObj[i].COUNT)]);
						}
						_vsnrChart.series[idx*1].setData(eachData); 
					});
				},
		        cache: false	
			});	
		}	
	
		
		function requestData_RAvg(dateActual, imgMode, ROIID,targetDiv){
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: '<c:url value='/' />timeseries/retrieval/L_1_B_RAVG',
				data: 'targetDate=' + dateActual + '&imgMode=1&menuId=l1b&submenuId=nVL',
		        success: function(jsonData) {
					if(jsonData.length==0)return;
					var _vrChart = $('#'+targetDiv).highcharts();
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
			        	eachData2 = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var dateString = vrDataObj[i].DSTR;
							var arr = dateString.split(" ");
							var dStr = arr[0].split("-");    
							var tStr = arr[1].split(":");
							var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
							eachData.push([d,parseNumericVal(vrDataObj[i].AVERAGEEW)]);
							eachData2.push([d,parseNumericVal(vrDataObj[i].AVERAGENS)]);
						}
						_vrChart.series[idx*2].setData(eachData);    //0 2 ..   
						_vrChart.series[idx*2+1].setData(eachData2);// 1 3 ..
					});
		        },
		        cache: false	
			});
		}	
	
			
		//missing val  <-assign null
		function parseNumericVal(someStuff){
			if(someStuff == null){
				return null;
			}else if(Math.abs(someStuff)==999){	
				return null;
			}else{
				return parseFloat(someStuff);
			}
		}
		
		
		function placeSomeLabelOnTheChart(chartObj, someTxt, leftPad, topPad, idStr){
			$('#verificationTable').remove();
			text = chartObj.renderer.text(someTxt).add();
			textBBox = text.getBBox();
			x = chartObj.plotLeft +  leftPad ; //- (textBBox.width  * 0.5);
			y = chartObj.plotTop  +  topPad;
			text.attr({x: x, y: y, id:idStr, zIndex:999});
		}
		
		
		
		var makeSymmDiffFunc = (function() {
		    var contains = function(pred, a, list) {
		        var idx = -1, len = list.length;
		        while (++idx < len) {if (pred(a, list[idx])) {return true;}}
		        return false;
		    };
		    var complement = function(pred, a, b) {
		        return a.filter(function(elem) {return !contains(pred, elem, b);});
		    };
		    return function(pred) {
		        return function(a, b) {
		            return complement(pred, a, b).concat(complement(pred, b, a));
		        };
		    };
		}());
		
		// var myDiff = makeSymmDiffFunc(function(x, y) {
		    // return x.value === y.value && x.display === y.display;
		// });
		
		// var result = myDiff(a, b); 
		
		function getDraggableContainerHTML(leadingStr,meTitle,meIdentifier){
		 	var divId = leadingStr+meIdentifier;
			var divTitle = meTitle;
			var chartId = 'ts_'+divId;
//console.log(chartId);
			if($('#'+divId).length){
				return;
			}
			var draggableDiv = '';
			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box'>";
			draggableDiv +=	"			<div class='box-header'>";
			draggableDiv +=	"				<div class='box-name'>";
			draggableDiv +=	"					<i class='fa fa-search'></i>";
			draggableDiv +=	"					<span>"+divTitle+"</span>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='box-icons'>";
			draggableDiv +=	"					<a class='collapse-link'>";
			draggableDiv +=	"						<i class='fa fa-chevron-up'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='no-move'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"			<div class='box-content'>";
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;width: 100%;margin: 0 auto;'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}
		
	</script>	


	<script type="text/javascript">

		function getSelectedTabIndex() { 
//	    	return $("#tabs").tabs('option', 'active');
			return "sameOldShit";
	    	
		}
	
	
		function meCombineDroppables(divId){
			// console.log('combine two or more droppables in div when me drops them on each other haha ');
			$( "#"+divId).not('.no-drop')
				.draggable({
					revert: true,
					zIndex: 2000,
					cursor: "crosshairs",
					handle: '.box-name',
					opacity: 0.8,
					stop:function(e){
		//				$(this).remove();
					}
				}).droppable({
					drop: function( event, ui ) {
						// alert( 'ui.draggable: dropped  ' + ui.draggable.attr('id') + '  -- into --> droppedOn:  ' + $(this).attr('id') );
						 var dropped = $('#ts_' + ui.draggable.attr('id')).highcharts();
						 var droppedOn = $('#ts_' + $(this).attr('id')).highcharts();
						s1 = dropped.addSeries({data:randomData(87),name:'fxx',type:'column'},true);
						dropped.redraw();
						$(this).remove();
					}
			});
		//		.sortable() //doejeon
		}
	
	
	    function randomData(len){
	       var dateString = '2013-04-05 00:00:00';	
	       var arr = dateString.split(" ");
		   var dStr = arr[0].split("-");
		   var tStr = arr[1].split(":");
		   var d = new  Date(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
	        var arr = [];
	        for(var i = 0; i<len;i++){
				d.setMinutes(d.getMinutes()+15);
				var newDate =  Date.UTC(d.getFullYear(), d.getMonth(), d.getDate(), d.getHours(), d.getMinutes(), d.getSeconds())
	            arr.push([newDate,Math.floor(Math.random()*21)-10]);
	        }
	        return arr;
	    }
	
		/**
		 * */
		function drawTimeseries(tabIndex, varSelected, dStr){
	//		console.log('drawTimeSeries'+ tabIndex + ' / ' + varSelected + ' / ' + dStr);
			if(varSelected.length==0) return;
			// if(tabIndex==0){ 
				$.each (varSelected, function(i,itm){
					
					if(i==0){
						var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'Number of Valid landmarks',itm);
						$('#chartContainer').append(vsnrHTML);
						addChart_LV1B_QI_NumOfLandmarks(dStr,getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+itm);
						
						var radianceHTML =  getDraggableContainerHTML('rad_det_', 'Residual Average',itm);
						$('#chartContainer').append(radianceHTML);
						addChart_LV1B_QI_ResidualAvg(dStr,getSelectedTabIndex(), $(this).attr('name'), 'ts_rad_det_'+itm);
					}
					
					
				});
		// }
			WinMove();
		}
		
		
		function addChart_LV1B_QI_NumOfLandmarks(dStr,tabIndex,itm,chartId){
			var _chartInstance;
			_chartInstance = new Highcharts.Chart({
				chart : {
					type : 'scatter',
					renderTo : chartId,  								events:{load:requestData_NVL(dStr,tabIndex,itm,chartId)},
					defaultSeriesType : 'line',
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				title: {
		            text: 'Number of Valid Landmarks',
		            align: 'center',
		            style:{
		            	font:'bold 16px NanumGothic'
		            }
		        },
		        subtitle: {
		            text: null,
		            align: 'center',
		            style:{
		            	font:'normal 13px Dotum'
		            }
		        },
		        xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							//console.log(this.value);
							var myDate = new Date(this.value);
							//console.log(myDate);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
							// return Highcharts.dateFormat("%l%p",newDateMs);
							return Highcharts.dateFormat("%e. %b %H:%M",newDateMs);
						}
					},
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				},
		        yAxis: {
	    			//get rid of horizontal grid lines haha
	    			//gridLineWidth: 0,
	    	        tickColor: '#346691',
	    	        tickLength: 5,
	    	        tickWidth: 1,
	    	        tickPosition: 'inside',
	    	        labels: {
	    	            align: 'right',
	    	            x:-10,
	    	            y:5
	    	        },
	    	        lineWidth:0,
	    	
		            title: {
		                text: 'Number',
	                	style : {
	                		font:'normal 12px Dotum'
	                	}	
		            },
		            labels:{
			            style : {
		            		font:'normal 11px Dotum'
			            },
			            formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
			            	return Highcharts.numberFormat(this.value, 0, '.', ',');
			            }
	            	},	
		        },
			
		        tooltip: {
	         		shared: true,
					crosshairs:true
				
		        },
		  
				exporting: {
					enabled:true
		        },
		        
		        credits: {
		            enabled: false
		        },
		        plotOptions : {
					scatter : {
						marker : {
							radius : 2,
							// "circle", "square", "diamond", "triangle" and "triangle-down".
							symbol:'circle',
							states : {
								hover : {
									enabled : true,
									lineColor : '#0c66a4'
								}
							}
						},
						states : {
							hover : {
								marker : {
									enabled : false
								}
							}
						}
					}
				},
		        tooltip : {
					shared : false,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth() - 1, myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b', newDateMs) + ': ' + this.y;
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + ': ' + this.y;
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + '<br>Number = ' + this.y;
	
					}
				},series: [
				    // {
				    	// name: 'Detector 0',
	 	             // // visible:false,
	 	             // // showInLegend:false,
	     	         // connectNulls:false, data: []}
	     	         {name:'FD (FULL)',
		     	         color:'#7cb5ec',
	    	 	         connectNulls:false, data: []}
	     	         ,{name:'APNH (FULL)',
	     		         color:'#434348',
	     		         // color:'#e4d354',
	     	    	     connectNulls:false, data: []}
	     	         ,{name:'ENH (FULL)',
	     	      	     color:'#f15c80',
	     	       	  	 connectNulls:false, data: []}
	     	         ,{name:'LSH (FULL)',
	     	         	color:'#f7a35c',
	     	         	connectNulls:false, data: []}
	     	         ,{name:'LA (FULL)',
	     	         	color:'#8085e8',
	     	         	connectNulls:false, data: []}
	         	]
		        , legend: {
	                layout: 'horizontal',
	      //        align: 'right',
	      //        verticalAlign: 'top',
	                // itemWidth:250,
	      //        useHTML:true,
	                // x: -10,
	                y: 0,
	                // borderColor: '#C98657', //mandarin
	                borderColor: '#aaa', //grayBlue
	                borderWidth: 1,
	                itemStyle: {
	                	fontWeight:'normal'
	                }
	            }    
				
			}); //haha
		}
		
		
		
		function addChart_LV1B_QI_ResidualAvg(dStr,tabIndex,itm,chartId){
			var _chartInstance2;
			_chartInstance2 = new Highcharts.Chart({
				chart : {
					type : 'scatter',
					renderTo : chartId,  								events:{load:requestData_RAvg(dStr,getSelectedTabIndex(),itm,chartId)},
					defaultSeriesType : 'line',
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				title: {
					text: 'Landmark Residual - Average (EW/NS)',
					align: 'center',
					style:{
						font:'bold 16px NanumGothic'
					}
				},
				subtitle: {
					text: null,
					align: 'center',
					style:{
						font:'normal 13px Dotum'
					}
				},
				xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							var myDate = new Date(this.value);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
							// return Highcharts.dateFormat("%l%p",newDateMs);
							return Highcharts.dateFormat("%e. %b %H:%M",newDateMs);
						}
					},
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				},
				yAxis: {
					//get rid of horizontal grid lines haha
					//gridLineWidth: 0,
					tickColor: '#346691',
					tickLength: 5,
					tickWidth: 1,
					tickPosition: 'inside',
					labels: {
						align: 'right',
						x:-10,
						y:5
					},
					lineWidth:0,
					 // max:3,
					// min: -3,
					 title: {
						text: 'Error',
						style : {
							font:'normal 12px Dotum'
						}	
					},
					labels:{
						style : {
							font:'normal 11px Dotum'
						},
						formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
			            	return Highcharts.numberFormat(this.value, 5, '.', ',');
			            }
					},	
				},
		   		exporting: {
					enabled:true
				},
			 	credits: {
					enabled: false
				},
				plotOptions : {
					scatter : {
						marker : {
							radius : 2,
							// states : {
								// hover : {
									// enabled : true,
									// lineColor : '#0c66a4'
								// }
							// }
						},
						// states : {
							// hover : {
								// marker : {
									// enabled : false
								// }
							// }
						// }
					}
				},
				tooltip : {
					shared : true,
					// crosshair:true,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b', newDateMs) + ': ' + this.y;
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + ': ' + this.y;
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + '<br>Error = ' + this.y;
	
					}
					
			   },series: [
					 {name:'FD (FULL) (EW)',
					  	color:'#7cb5ec',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
					 ,{name:'FD (FULL) (NS)',
					  	color:'#7cb5ec',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'APNH (FULL) (EW)',
	     	         	color:'#434348',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'APNH (FULL) (NS)',
	     	         	color:'#434348',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'ENH (FULL) (EW)',
	     	         	color:'#f15c80',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'ENH (FULL) (NS)',
	     	         	color:'#f15c80',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'LSH (FULL) (EW)',
	     	         	color:'#f7a35c',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'LSH (FULL) (NS)',
	     	         	color:'#f7a35c',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'LA (FULL) (EW)',
	     	         	color:'#8085e8',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'LA (FULL) (NS)',
	     	         	color:'#8085e8',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
			  ]
			   , legend: {
					layout: 'horizontal',
		         // align: 'center',
		  //        verticalAlign: 'top',
					 itemWidth:130,
					 // itemMarginLeft:100,
		  //        useHTML:true,
					// x: -10,
					y: 0,
	                // borderColor: '#C98657', //mandarin
	                borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
	                	fontWeight:'normal'
	                }
				}    
			}); //haha timeseries
		}
		
		
		
		
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		function meRequest(meDateObj){
			var selected = [];
			$('#checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			});
			drawTimeseries(getSelectedTabIndex(),selected, meDateObj.format('YYYY-MM-DD'));
		}
		
		
		var minDate = new Date(2007,0,01);
		var recentStuffArr = "${extSeries.compbegindate4Cal}".split('-');
		var mostRecentDate = new Date(recentStuffArr[0],recentStuffArr[1]-1,recentStuffArr[2]);
		/* console.log(mostRecentDate instanceof Date && !isNaN(mostRecentDate.valueOf())) */
		
		function getDateCalculated(whichOperator){
			var dStrArr =  $("#meNMSCDemo").val().split('-');		
			//var currDate = $('#meNMSCDemo').data('daterangepicker').startDate;    ---> not a date obj
			var currDate = new Date(dStrArr[0],dStrArr[1]-1,dStrArr[2]);
			var dateTarget = getRetrievalInterval(whichOperator,currDate);
			
			if(dateTarget.getTime() < minDate.getTime()){
				alert("자료 제공 범위는 2007-01-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
				$('#meNMSCDemo').data('daterangepicker').setStartDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').data('daterangepicker').setEndDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').val(moment(minDate).format('YYYY-MM-DD'));
				meRequest(moment(minDate));
			}else if(dateTarget.getTime() > mostRecentDate.getTime()){
				alert("자료 제공 범위는 2007-01-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
				$("#btn_getMostRecentOne").trigger( "click" );
			}else{
				$('#meNMSCDemo').data('daterangepicker').setStartDate(moment(dateTarget).format('YYYY-MM-DD'));
				$('#meNMSCDemo').data('daterangepicker').setEndDate(moment(dateTarget).format('YYYY-MM-DD'));
				$('#meNMSCDemo').val(moment(dateTarget).format('YYYY-MM-DD'));
				meRequest(moment(dateTarget));
			}
		}
		
		function getRetrievalInterval(operator,currDate){
			var dateCalculated = currDate;
			//var interval = $('#retrievalIntervalChooser').find(":selected").val()+'';
			var interval = $('#retrievalRangeSelector .selected').attr('value');
			var math_it_up={ 'btn_next': function (x, y) { return x + y },
				    		 'btn_prev': function (x, y) { return x - y }
			};
			
	 		if(interval=='DAY'){
	 			dateCalculated.setDate(math_it_up[operator](dateCalculated.getDate(),1));
			}else if(interval=='WEEK'){
				dateCalculated.setDate(math_it_up[operator](dateCalculated.getDate(),7));
			}else if(interval=='MONTH'){
				//dateCalculated.setMonth(math_it_up[operator](dateCalculated.getMonth(),1));
				var addOrSubtractMonth= (operator=='btn_prev')? -1:1; //31 Jan + 1 month = 28 Feb
				dateCalculated = new Date(dateCalculated).add(addOrSubtractMonth).month();
			}else if(interval=='YEAR'){
				dateCalculated = new Date(dateCalculated).add((operator=='btn_prev')? -1:1).year();
			}
			return dateCalculated;
		}
		/** pannel_dateRetrieval end */
		/** pannel_dateRetrieval end*/
		/** pannel_dateRetrieval end*/
			
	
		
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
/* 			
		    $('#tabs').tabs({
		        activate: function(event, ui){
		        },active:1
		    });
		
		
		    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
		        var currentTab = $(e.target).text(); // get current tab
		        $('#qIdx_amc li:nth-child('+(getSelectedTabIndex()*1+1)+') a').click();
		    });
		    
 */		    
		    
			/**
			 * 61.PAM
			 * 2013-04-01 ~ 2013-04-05
			 * */
			$("#checkboxes :checkbox").change(function(e){
				if ($(this).is(":checked")){
					var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'Number of Valid landmarks',$(this).attr('name'));
					$('#chartContainer').append(vsnrHTML);
					addChart_LV1B_QI_NumOfLandmarks('2018-04-05',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+$(this).attr('name'));
					
					var radianceHTML =  getDraggableContainerHTML('rad_det_', 'Residual Average',$(this).attr('name'));
					$('#chartContainer').append(radianceHTML);
					addChart_LV1B_QI_ResidualAvg('2018-04-05',getSelectedTabIndex(), $(this).attr('name'), 'ts_rad_det_'+$(this).attr('name'));
					
					// meCombineDroppables(divId);
					// scroll down ani programmatically haha
				}else{
			    	var id_getRidOf = 'vsnr_det_'+$(this).attr('name');
			    	if($('#'+id_getRidOf).length) $('#'+id_getRidOf).remove();
			    	id_getRidOf = 'rad_det_'+$(this).attr('name');
			    	if($('#'+id_getRidOf).length) $('#'+id_getRidOf).remove();
				} 
				
				
				WinMove();
			});
				
			
			
			var selected = [];
			$('#checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			});
			
			
			drawTimeseries(getSelectedTabIndex(), selected,$("#meNMSCDemo").val());
			
			
			
			//resize draggableITem
			//resize draggableITem
			var itemSize=6;
			$('#control_resize_small').click(function() {
				rowItem_resizable(4);
			});
			$('#control_resize_medium').click(function() {
				rowItem_resizable(6);
			});
			$('#control_resize_large').click(function() {
				rowItem_resizable(12);
			});
			var rowItem_resizable = function(size) {
				$('.meDraggableItem').removeClass('col-xs-'+itemSize);
				$('.meDraggableItem').removeClass('col-md-'+itemSize);
				$('.meDraggableItem').removeClass('col-lg-'+itemSize);
				$('.meDraggableItem').addClass('col-xs-'+size);
				$('.meDraggableItem').addClass('col-md-'+size);
				$('.meDraggableItem').addClass('col-lg-'+size);
				itemSize = size;
				//resize div and reflow!!!
				//$('#ts_vsnr_det_1').highcharts().reflow();
				//$('#ts_rad_det_1').highcharts().reflow();
				$('.classySnob').each(function() { $(this).highcharts().reflow(); });
			}; 
			
			//resize draggableITem
			//resize draggableITem
			
			
		});
	</script>
</head>

<body id="fabulousbdtc">
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
	<!-- 전체 레이어 시작 -->
	
	<!-- header-->
	<div id="meHeader">
	    <c:import url="/mePageLink.do?link=main/inc/meNavTop" />
	</div>
	
		
	<!--dateChoooooser--> 
	<!--dateChoooooser--> 
	<header class="meControllPanel">
		<div class="container" align="left">
            <div class="form-horizontal">
            	 <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5 demo vcenter" style="width:220px;padding-top: 3px;">
		            <input type="text" id="meNMSCDemo" class="form-control" readonly="readonly">
		            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
		          </div>
            	
            	
	             <div class="vcenter">
	            	<div class="pull-left" style="margin-right: 15px;">
	            		<button  type="button" class="meBtn meBtn-primary meBtn-lg outline " style="margin-top:2px;" id="btn_getMostRecentOne">최근</button>
	            	</div>
	            	
	            	<div class="pull-left">
	            		<button  id="btn_prev" type="button" class="meBtn meBtn-primary  fa fa-chevron-left"
	            			 onclick="getDateCalculated(this.id)"></button>
	            	</div>
	            	
	            	
	            	<div id="retrievalRangeSelector" class="dropdown select pull-left" style="margin-left: 3px;margin-right: 3px">
					    <button class="  btn-small dropdown-toggle " type="button" id="menu1" data-toggle="dropdown" style="margin-top:6px;">
					    	<span class="selected" id="1" value="WEEK">1주일</span><span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu option" role="menu" >
					      <li id="1" role="presentation" value="WEEK"><a role="menuitem" tabindex="-1" >1주일</a></li>
					      <li id="2" role="presentation" value="MONTH"><a role="menuitem" tabindex="-1" >1개월</a></li>
					      <li id="3" role="presentation" value="YEAR"><a role="menuitem" tabindex="-1" >1년</a></li>
					      <!-- 
					      <li role="presentation" class="divider"></li>
					       -->
					    </ul>
				    </div>
				    
	            	<div class="pull-left">
	            		<button  id="btn_next" type="button" class="meBtn meBtn-primary fa fa-chevron-right"  
	            			onclick="getDateCalculated(this.id)"></button>
	            	</div>
	            	
	            	
	            	
	            	
	            	<div id="social" class="pull-left" style="padding-left:7px;margin-top: 6px;">
						<div class="btn-group" id='control_size' >
							<!--
							<button type="button" class="btn btn-warning btn-xs" style="margin-bottom:0px;" id='control_resize_small' title='3 column'><span class="glyphicon glyphicon-th"></span></button>
							-->
							<button type="button" class="btn btn-danger btn-xs" style="margin-bottom:0px;" id='control_resize_medium' title='2 column'><span class="glyphicon glyphicon-th-large"></span></button>
							<button type="button" class="btn btn-success btn-xs" style="margin-bottom:0px;" id='control_resize_large' title='1 column'><span class="glyphicon glyphicon-picture"></span></button>
						</div>
					</div>
	            	
	            	
	            	
	            </div>	
            
           		<div class="pull-right" style="padding-right:50px;"> 
	            	<ul id="breadcrumbs-one" class="pull-right vcenter" >
						<li><a href="<c:url value='/cmm/main/mainPage.do'/>">Home</a></li>
						<li><a>Level 1 B</a></li>
						<li><a>품질지표</a></li>
					</ul>
            	</div>
            </div>
		     
		            
        	<script type="text/javascript">
        	
	        	$('#retrievalRangeSelector').on('click','.option li',function(){
	        		var i = $(this).parents('.select').attr('id');
	        		var v = $(this).children().text();
	        		var o = $(this).attr('id');
	        		var valStr = $(this).attr('value'); // (WEEK || MONTH || YEAR)
	        		$('#'+i+' .selected').attr('id',o);
	        		$('#'+i+' .selected').text(v);
	        		$('#'+i+' .selected').attr('value',valStr);
	        		//var haha = $('#retrievalRangeSelector .selected').attr('value');
	        	});
        	
        		$('#btn_getMostRecentOne').click(function(){
        			//change the selected date range of that picker
        			$('#meNMSCDemo').data('daterangepicker').setStartDate('<c:out value="${extSeries.compbegindate4Cal}" />');
        			$('#meNMSCDemo').data('daterangepicker').setEndDate('<c:out value="${extSeries.compbegindate4Cal}" />');
        			$('#meNMSCDemo').val('<c:out value="${extSeries.compbegindate4Cal}" />');
					//click event는 발생안하네        			
        			meRequest(moment(mostRecentDate));
        		});
        	
        		
        		$('#meNMSCDemo').daterangepicker({
        			locale: {
        				format: 'YYYY-MM-DD'
        			}, 
           		    "singleDatePicker": true,
        		    "showDropdowns": true,
        		    /* "startDate": moment().subtract(6, 'days'), */
        		    /* "endDate":moment().subtract(0, 'days'),*/
        		    "startDate": "<c:out value="${extSeries.compbegindate4Cal}" />", 
        		    "endDate" : "<c:out value="${extSeries.compbegindate4Cal}" />",
        		    /* "minDate": "2007-01-01", */
        		    "maxDate": "<c:out value="${extSeries.compbegindate4Cal}" />"     //today
        			}, function(start, end, label) {
        				
        				selected=[];
        				$('#checkboxes input:checked').each(function() {
        				    selected.push($(this).attr('name'));
        				});
        				
        				 drawTimeseries(getSelectedTabIndex(), selected, start.format('YYYY-MM-DD'));
           		  
           		});
		        	
		    </script>    
		        
		</div>
	</header>
	
	<!--dateChoooooser--> 
	<div class="container">	
		<div id="checkboxes" class="col-md-1" style="padding-top:10px; ">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="1" checked disabled="disabled">No.Landmark
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox"  name="2" checked disabled="disabled">AVG.
				</label>
			</div>
		</div>	
		
		
		<div  id="chartContainer" class="col-md-11" style="padding-top:20px;" >  
			
		</div> 
		
	</div>
	
	<!-- Footer -->
	<div id="meFooter"  style="margin-top: 20px;">
		<c:import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>	
	
</body>

</html>


