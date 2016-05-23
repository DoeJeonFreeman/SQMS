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
    
	<title>품질지표 Level 2</title>
	
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
    
	<!-- 2c.doe.hicharts
	<script src="<c:url value="/js/highchart/highcharts.js"/>"></script>
	<script src="<c:url value="/js/highchart/highcharts-more.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/exporting.js"/>"></script>
	 -->
	 	<script src="http://code.highcharts.com/highcharts.src.js"></script>
	<script src="http://code.highcharts.com/highcharts-more.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	
	<!-- amcharts -->
	<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
	<script src="https://www.amcharts.com/lib/3/xy.js"></script>
	<script src="https://www.amcharts.com/lib/3/serial.js"></script>
	<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
	<script src="https://www.amcharts.com/lib/3/plugins/export/export.js"></script>
	<!-- amcharts export menu -->
 	<link href="https://www.amcharts.com/lib/3/plugins/export/export.css" rel="stylesheet" />
	
	<!-- google charts -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		
		
		
	
	
	<script type="text/javascript">
	
		String.prototype.endsWith = function(suffix) {
	   		return this.indexOf(suffix, this.length - suffix.length) !== -1;
		};
		
		
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
		
		
		function getRandomizer(bottom, top) {
		        return Math.floor( Math.random() * ( 1 + top - bottom ) ) + bottom;
		}
		
		
		function requestData_amc(dateActual, imgMode, ROIID,targetDiv){
			arr1 = [];
			arr2 = [];
			arr3 = [];
			
			var initDateStr = '2015-11-07';
			var duration = 30; //days
			// var dpHrs = [08,10,15];
			var dpHrs = [];
			dpHrs.push(getRandomizer(8,16));
			// dpHrs.push(getRandomizer(12,14));
			// dpHrs.push(getRandomizer(15,16));
			var initValues = [0.83112, 0.10732, 0.82420];
			
			var dArr= initDateStr.split('-');
			var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
			
			for(var i=1; i<=duration; i++){
				var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
				dActual.setDate(dActual.getDate()+i);
				for (var hour in dpHrs){
					var dd = new Date(dActual);
					dd.setHours(dd.getHours()+(dpHrs[hour]*1));
					dd.setMinutes(dd.getMinutes()+getRandomizer(0, 59));
					// getRandomizer(initValues[0]-(initValues[0]*0.05)*10, initValues[0]+(initValues[0]*0.05)*10)
					arr1.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[0]-(initValues[0]*0.05))*100,  (initValues[0]+(initValues[0]*0.05))*100)/100]);
					arr2.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[1]-(initValues[0]*0.05))*100,  (initValues[1]+(initValues[0]*0.05))*100)/100]);
					arr3.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[2]-(initValues[0]*0.05))*100,  (initValues[2]+(initValues[0]*0.05))*100)/100]);
				}
			}
			
			var _chart = $('#'+targetDiv).highcharts(); 
			// console.log(_chart);
			_chart.series[0].setData(arr1); 
			_chart.series[1].setData(arr2); 
			_chart.series[2].setData(arr3); 
			
		}	
	
		
		function requestData(dateActual, imgMode, ROIID,targetDiv){
			arr1 = [];
			arr2 = [];
			arr3 = [];
			
			var initDateStr = '2015-11-07';
			var duration = 30; //days
			// var dpHrs = [08,10,15];
			var dpHrs = [];
			dpHrs.push(getRandomizer(8,16));
			// dpHrs.push(getRandomizer(12,14));
			// dpHrs.push(getRandomizer(15,16));
			var initValues = [0.83112, 0.10732, 0.82420];
			
			var dArr= initDateStr.split('-');
			var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
			
			for(var i=1; i<=duration; i++){
				var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
				dActual.setDate(dActual.getDate()+i);
				for (var hour in dpHrs){
					var dd = new Date(dActual);
					dd.setHours(dd.getHours()+(dpHrs[hour]*1));
					dd.setMinutes(dd.getMinutes()+getRandomizer(0, 59));
					// getRandomizer(initValues[0]-(initValues[0]*0.05)*10, initValues[0]+(initValues[0]*0.05)*10)
					arr1.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[0]-(initValues[0]*0.05))*100,  (initValues[0]+(initValues[0]*0.05))*100)/100]);
					arr2.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[1]-(initValues[0]*0.05))*100,  (initValues[1]+(initValues[0]*0.05))*100)/100]);
					arr3.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[2]-(initValues[0]*0.05))*100,  (initValues[2]+(initValues[0]*0.05))*100)/100]);
				}
			}
			
			var _chart = $('#'+targetDiv).highcharts(); 
			// console.log(_chart);
			_chart.series[0].setData(arr1); 
			_chart.series[1].setData(arr2); 
			_chart.series[2].setData(arr3); 
		}	
	
		
		function requestData_VR(dateActual, imgMode, ROIID,targetDiv){
			arr1 = [];
			arr2 = [];
			arr3 = [];
			
			var initDateStr = '2015-11-07';
			var duration = 30; //days
			// var dpHrs = [08,11,13];
			var dpHrs = [];
			dpHrs.push(getRandomizer(8,16));
			// dpHrs.push(getRandomizer(11,13));
			// dpHrs.push(getRandomizer(14,16));
			var initValues = [0.95, 0.21, 0.89];
			
			var dArr= initDateStr.split('-');
			var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
			
			for(var i=1; i<=duration; i++){
				var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
				dActual.setDate(dActual.getDate()+i);
				for (var hour in dpHrs){
					var dd = new Date(dActual);
					dd.setHours(dd.getHours()+(dpHrs[hour]*1));
					dd.setMinutes(dd.getMinutes()+getRandomizer(0, 59));
					// getRandomizer(initValues[0]-(initValues[0]*0.05)*10, initValues[0]+(initValues[0]*0.05)*10)
					arr1.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[0]-(initValues[0]*0.05))*100,  (initValues[0]+(initValues[0]*0.05))*100)/100]);
					arr2.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[1]-(initValues[0]*0.05))*100,  (initValues[1]+(initValues[0]*0.05))*100)/100]);
					arr3.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[2]-(initValues[0]*0.05))*100,  (initValues[2]+(initValues[0]*0.05))*100)/100]);
				}
			}
			
			var _chart = $('#'+targetDiv).highcharts(); 
			// console.log(_chart);
			_chart.series[0].setData(arr1); 
			_chart.series[1].setData(arr2); 
			_chart.series[2].setData(arr3); 
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
			draggableDiv +=	"			<div class='legendcontainer' >";
			draggableDiv +=	"				<div id='"+ chartId + "_legend' style='width: 100%; height:100%;'></div>";
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
		function drawTimeseries(tabIndex, varSelected){
			if(varSelected.length==0) return;
			// if(tabIndex==0){ 
				$.each (varSelected, function(i,itm){
					
					if(i==0){
						var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'CLD',itm);
						$('#chartContainer').append(vsnrHTML);
						/*googleCharts 0*/
						//addChart_VSNR_google('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+itm); 
						
						/*amcharts 0*/
						addChart_VSNR_amc('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+itm); 
						
						/*amcharts 1*/
//						addChart_VSNR_amc_xy('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+itm);
						
						
						//requestData_amc('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+itm);
						
						
						var radianceHTML =  getDraggableContainerHTML('rad_det_', 'Cloud Amount',itm);
						$('#chartContainer').append(radianceHTML);
						addChart_VRadiance('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_rad_det_'+itm);
						requestData_VR('date-str-goes-here',getSelectedTabIndex(), $(this).attr('name'), 'ts_rad_det_'+itm);
					}
					
					
				});
		// }
			WinMove();
		}
		
	 	function addChart_VSNR_google(dStr,tabIndex,itm,chartId){
	 	      google.charts.load('current', {'packages':['corechart']});
	 	      google.charts.setOnLoadCallback(function(){
	 	    	  drawChart(chartId);
	 	      });
		} 
	 	
	    function drawChart(targetDiv) {
	       var data = google.visualization.arrayToDataTable([
	         ['Age', 'Weight'],
	         [ 8,      12],
	         [ 4,      5.5],
	         [ 11,     14],
	         [ 4,      5],
	         [ 3,      3.5],
	         [ 6.5,    7]
	       ]);

	       var options = {
	         title: 'Age vs. Weight comparison',
	         hAxis: {title: 'Age', minValue: 0, maxValue: 15},
	         vAxis: {title: 'Weight', minValue: 0, maxValue: 15},
	         legend: 'none'
	       };

	       var chart = new google.visualization.ScatterChart(document.getElementById(targetDiv));

	       chart.draw(data, options);
	     }
		
		
		
	/* 		series: [
					 {name:'POD',
					  	color:'#8085e8',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
					 ,{name:'FAR',
					  	color:'#434348',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'PC',
	     	         	color:'#f15c80',
					  	marker: {
			               symbol: 'diamond'
			            },   
	     	         	connectNulls:false, data: []}
			  ] */
		     
		
//	 	var chartData = generateChartData();
	 	var chartData = generateChartData4XY();
		function addChart_VSNR_amc(dStr,tabIndex,itm,chartId){
			var chart = AmCharts.makeChart(chartId, {
			  "type": "serial",
			  "theme": "light",
			  "marginRight": 30,
			  "pathToImages": "http://www.amcharts.com/lib/3/images/",
			  "dataProvider": chartData,
			  "valueAxes": [ {
			    "position": "left",
			    "title": "Value"
			  } ],
			  
		  "titles": [{
		        "text": "CLD"
		    } ],	  
			  
		  "legend": {
			    "divId": chartId+"_legend",
			    "position": "bottom",
			    "align":"center"
		  },
			  
			  
			  "graphs": [ {
				"id":"me1",
//			    "fillAlphas": 0.1,
			    "valueField": "POD",
			    "balloonText": "<div style='margin:3px; font-size:14px;'>POD:<b>[[value]]</b></div>",
		        "bullet": "round",
		        "bulletSize": 1,         
//		        "lineColor": "#d1655d",
		        "lineThickness": 0,
//		        "negativeLineColor": "#637bb6",
		        "type": "line"
			  },{
//			    "fillAlphas": 0.1,
			    "valueField": "FAR",
			    "balloonText": "<div style='margin:3px; font-size:14px;'>FAR:<b>[[value]]</b></div>",
		        "bullet": "round",
		        "bulletSize": 1,         
//			        "lineColor": "#d1655d",
		        "lineThickness": 0,
//			        "negativeLineColor": "#637bb6",
		        "type": "line"		    
			  },{
//			    "fillAlphas": 0.1,
			    "valueField": "PC",
			    "balloonText": "<div style='margin:3px; font-size:14px;'>PC:<b>[[value]]</b></div>",
		        "bullet": "round",
		        "bulletSize": 1,         
//			        "lineColor": "#d1655d",
		        "lineThickness": 0,
//			        "negativeLineColor": "#637bb6",
		        "type": "line"
			  } ],
			  "chartCursor": {
			    "categoryBalloonDateFormat": "JJ:NN, DD MMMM",
			    "cursorPosition": "mouse",
			    "selectWithoutZooming": true
			  },
			  "categoryField": "date",
			  "categoryAxis": {
			    "minPeriod": "mm",
			    "parseDates": true
			  },
			  "export": {
			    "enabled": true,
			    "libs": {
			      "path": "http://www.amcharts.com/lib/3/plugins/export/libs/"
			    }
			  },
			  "chartScrollbar": {
			        //"graph":"me1",
			        "gridAlpha":0,
			        "color":"#888888",
			        "scrollbarHeight":35,
			        "backgroundAlpha":0,
			        "selectedBackgroundAlpha":0.1,
			        "selectedBackgroundColor":"#888888",
			        "graphFillAlpha":0,
			        "autoGridCount":true,
			        "selectedGraphFillAlpha":0,
			        "graphLineAlpha":0.2,
			        "graphLineColor":"#c2c2c2",
			        "selectedGraphLineColor":"#888888",
			        "selectedGraphLineAlpha":0.5

			    },
			} );
		}
		// generate some random data, quite different range
		function generateChartData() {
		  var chartData = [];
		  // current date
		  var firstDate = new Date();
		  // now set 500 minutes back
		  firstDate.setMinutes( firstDate.getDate() - 1000 );

		  // and generate 500 data items
		  for ( var i = 0; i < 500; i++ ) {
		    var newDate = new Date( firstDate );
		    // each time we add one minute
		    newDate.setMinutes( newDate.getMinutes() + i );
		    // some random number
			//var visits = Math.round( Math.random() * 40 + 10 + i + Math.random() * i / 5 );
	 var POD = Math.round( Math.random() * 40 + 10 + i + Math.random() * i / 5 );
	 var FAR = Math.round( Math.random() * 40 + 10 + i + Math.random() * i / 5 );
	 var PC = Math.round( Math.random() * 40 + 10 + i + Math.random() * i / 5 );
		    // add data item to the array
		    chartData.push( {
		      date: newDate,
		      POD:POD,
		      FAR:FAR,
		      PC:PC
		    } );
		  }
		  return chartData;
		}
	 
		// generate some random data, quite different range
		function generateChartData4XY() {
			var pseudoChartData = [];
			var initDateStr = '2015-11-07';
			var duration = 30; //days
			var dpHrs = [];
			dpHrs.push(getRandomizer(8,16));
			var initValues = [0.95, 0.21, 0.89];
			
			var dArr= initDateStr.split('-');
			var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
			
			for(var i=1; i<=duration; i++){
				var dActual = new Date(dArr[0],dArr[1]*1-1,dArr[2]);
				dActual.setDate(dActual.getDate()+i);
				for (var hour in dpHrs){
					var dd = new Date(dActual);
					dd.setHours(dd.getHours()+(dpHrs[hour]*1));
					dd.setMinutes(dd.getMinutes()+getRandomizer(0, 59));
					// getRandomizer(initValues[0]-(initValues[0]*0.05)*10, initValues[0]+(initValues[0]*0.05)*10)
					var newDate = Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes());
					var pod = getRandomizer((initValues[0]-(initValues[0]*0.05))*100,  (initValues[0]+(initValues[0]*0.05))*100)  / 100;
					var far = getRandomizer((initValues[1]-(initValues[0]*0.05))*100,  (initValues[1]+(initValues[0]*0.05))*100)  / 100;
					var pc  = getRandomizer((initValues[2]-(initValues[0]*0.05))*100,  (initValues[2]+(initValues[0]*0.05))*100)  / 100;
					pseudoChartData.push({
						date:newDate,
						dStr:AmCharts.formatDate(new Date(newDate), "YYYY-MM-DD JJ:NN"),
						POD:pod.toFixed(5),
						FAR:far.toFixed(5),
						PC:pc.toFixed(5)
					});
					//arr2.push([Date.UTC(dd.getFullYear(), dd.getMonth(), dd.getDate(), dd.getHours(), dd.getMinutes()), getRandomizer((initValues[1]-(initValues[0]*0.05))*100,  (initValues[1]+(initValues[0]*0.05))*100)/100]);
				}
			}
			return pseudoChartData;
			
		  
		  
		  
		}
		 
		var xychartData = generateChartData4XY(); 
	 	function addChart_VSNR_amc_xy(dStr,tabIndex,itm,chartId){
			var chart = AmCharts.makeChart(chartId, {
			    "type": "xy",
			    "theme": "light",
			    "pathToImages": "http://www.amcharts.com/lib/3/images/",
			    "dataProvider": xychartData, 
			    "valueAxes": [{
			        "position":"bottom",
			        "axisAlpha": 0,
			        "dashLength": 1,
			        "title": null,
			        "minimum":  Date.UTC(2015,10,09,0,0,0),//1406840400000,  
			        "maximum":  Date.UTC(2015,11,07,0,0,0),// 1407877200000,
			        "labelFunction": function (value) {
			            var date = new Date(value);
			            return AmCharts.formatDate(date, "DD. MMM");
			        }
			    }, {
			        "axisAlpha": 0,
			        "dashLength": 1,
			        "position": "left",
			        "title": "Value"
			    }],
			    "startDuration": 1,
			    "graphs": [{
			    	"id" : "lvl2_cld",
			        "balloonText": "[[dStr]]<br/>POD: <b>[[y]]</b>",
			        "bullet": "triangleUp",
			        "bulletSize": 6,
			        "lineAlpha": 0,
			        "xField": "date",
			        "yField": "POD",
			       // "lineColor": "#FF6600",
			    	"fillAlphas": 0
			    }, {
			        "balloonText": "[[dStr]]<br/>FAR: <b>[[y]]</b>",
			        "bullet": "triangleDown",
			        "bulletSize": 6,
			        "lineAlpha": 0,
			        "xField": "date",
			        "yField": "FAR",
			       // "lineColor": "#FCD202",
			    	"fillAlphas": 0
			    }, {
			        "balloonText": "[[dStr]]<br/>PC: <b>[[y]]</b>",
			        "bullet": "circle",
			        "bulletSize": 6,
			        "lineAlpha": 0,
			        "xField": "date",
			        "yField": "PC",
			       // "lineColor": "#FCD202",
			    	"fillAlphas": 0
			    }],
			    "marginLeft": 64,
			    "marginBottom": 60,
			    "chartScrollbar": {
			       /*  "graph": "lvl2_cld",
			        "scrollbarHeight": 80,
			        "backgroundAlpha": 0,
			        "selectedBackgroundAlpha": 0.1,
			        "selectedBackgroundColor": "#888888",
			        "graphFillAlpha": 0,
			        "graphLineAlpha": 0.5,
			        "selectedGraphFillAlpha": 0,
			        "selectedGraphLineAlpha": 1,
			        "autoGridCount": true,
			        "color": "#AAAAAA" */
			    },
			    "chartCursor": {
			        "categoryBalloonDateFormat": "JJ:NN, DD MMMM",
			        "cursorPosition": "mouse"
			    },
			    
	/* 		    "categoryField": "date",
			    "categoryAxis": {
			        "minPeriod": "mm",
			        "parseDates": true
			    }, */
			    
			});
		} 
		
		function addChart_VSNR(dStr,tabIndex,itm,chartId){
			var _chartInstance;
			_chartInstance = new Highcharts.Chart({
				chart : {
					type : 'scatter',
					renderTo : chartId,  								//events:{load:requestData(dStr,tabIndex,itm,chartId)},
					defaultSeriesType : 'line',
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				title: {
		            text: 'CLD',
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
		                text: 'Value',
	                	style : {
	                		font:'normal 12px Dotum'
	                	}	
		            },
		            labels:{
			            style : {
		            		font:'normal 11px Dotum'
			            },
			            formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
			            	return Highcharts.numberFormat(this.value, 2, '.', ',');
			            }
	            	},	
		        },
/* 			
		        tooltip: {
	         		shared: true,
					crosshairs:true
				
		        },
		  
 */				exporting: {
					enabled:true
		        },
		        
		        credits: {
		            enabled: false
		        },
		        plotOptions : {
					scatter : {
						marker : {
							radius : 3,
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
					shared : true,
					crosshairs: true,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth() - 1, myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b', newDateMs) + ': ' + this.y;
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + ': ' + this.y;
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + '<br>' + this.y;

					}
			   },series: [
					 {name:'POD',
					  	color:'#8085e8',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
					 ,{name:'FAR',
					  	color:'#434348',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'PC',
	     	         	color:'#f15c80',
					  	marker: {
			               symbol: 'diamond'
			            },   
	     	         	connectNulls:false, data: []}
			  ]
		        , legend: {
	                layout: 'horizontal',
	      //        align: 'right',
	      //        verticalAlign: 'top',
	                // itemWidth:250,
	      //        useHTML:true,
	      				 itemWidth:130,
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
		
		
		
		function addChart_VRadiance(dStr,tabIndex,itm,chartId){
			var _chartInstance2;
			_chartInstance2 = new Highcharts.Chart({
				chart : {
					type : 'scatter',
					renderTo : chartId,  								//events:{load:requestData_VR(dStr,getSelectedTabIndex(),itm,chartId)},
					defaultSeriesType : 'line',
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				title: {
					text: 'CA',
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
						text: 'Value',
						style : {
							font:'normal 12px Dotum'
						}	
					},
					labels:{
						style : {
							font:'normal 11px Dotum'
						},
						formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
			            	return Highcharts.numberFormat(this.value, 2, '.', ',');
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
							radius : 3,
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
					 crosshairs:true,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b', newDateMs) + ': ' + this.y;
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + ': ' + this.y;
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M', newDateMs) + '<br>' + this.y;

					}
					
			   },series: [
					 {name:'R',
					  	color:'#8085e8',
					  	marker: {
			                symbol: 'triangle'
			            },   
	     	         	connectNulls:false, data: []}
					 ,{name:'Bias',
					  	color:'#434348',
					  	marker: {
			               symbol: 'circle'
			            },   
	     	         	connectNulls:false, data: []}
	     	         ,{name:'RMSE',
	     	         	color:'#f15c80',
					  	marker: {
			               symbol: 'diamond'
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
		    
 
 
			$("#checkboxes :checkbox").change(function(e){
				if ($(this).is(":checked")){
					var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'CLD',$(this).attr('name'));
					$('#chartContainer').append(vsnrHTML);
					addChart_VSNR('2013-04-05',getSelectedTabIndex(), $(this).attr('name'), 'ts_vsnr_det_'+$(this).attr('name'));
					
					var radianceHTML =  getDraggableContainerHTML('rad_det_', 'CA',$(this).attr('name'));
					$('#chartContainer').append(radianceHTML);
					addChart_VRadiance('2013-04-05',getSelectedTabIndex(), $(this).attr('name'), 'ts_rad_det_'+$(this).attr('name'));
					
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
			
			
			drawTimeseries(getSelectedTabIndex(), selected);
			
			
			
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
				$('#ts_rad_det_1').highcharts().reflow();
//				$('.classySnob').each(function() { $(this).highcharts().reflow(); });
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
						<li><a>품질지표</a></li>
						<li><a>Level 2</a></li>
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
        			"singleDatePicker": false,
        			"showDropdowns": true,
        			 "startDate": "2015-11-08", 
        			 "endDate" : "2015-12-07",
        			    
        			}, function(start, end, label) {
        				
        				// meRequest(start);
        			  alert("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')\n"+"[START] " + start.format('YYYY-MM-DD')+"[END] " + end.format('YYYY-MM-DD'));
        				
        		});
        			
        		
        		

		        	
		    </script>    
		        
		</div>
	</header>
	
	<!--dateChoooooser--> 
	<div class="container">	
	
		<div id="checkboxes" class="col-md-1" style="padding-top:10px; ">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="1" checked disabled="disabled">CLD
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox"  name="2" checked disabled="disabled">CA
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


