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
    
	<title>품질지표 Level 1 A</title>
	
 
	<script src="<c:url value="/js/jquery/jquery-1.9.1.js"/>"></script>	
    <script src="<c:url value="/resource/js/bootstrap.min.js"/>"></script>
    
<!-- 
 -->
<link href="<c:url value="/css/sidebar.css"/>" rel="stylesheet">

    <!-- JQuery UI -->
    <link href="<c:url value="/js/jquery/ui/jquery-ui.css"/>" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resource/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resource/css/modern-business.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resource/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">	
	
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<link href="<c:url value="/css/style_v2.css"/>" rel="stylesheet">
    
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
	
<!-- 차트드로잉 관련 펑션 분리 -->
<!-- 차트드로잉 관련 펑션 분리 -->
<script src="<c:url value="/js/meDrawTimeseriesChart.js"/>"></script>
    
	<!-- 2c.doe.hicharts 
	
	<script src="http://code.highcharts.com/highcharts.src.js"></script>
	<script src="http://code.highcharts.com/highcharts-more.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	-->
	<script src="<c:url value="/js/highchart/highcharts.js"/>"></script>
	<script src="<c:url value="/js/highchart/highcharts-more.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/exporting.js"/>"></script>
	
	<!-- minimal ajax loading spinner -->
	<script src="<c:url value="/js/preloader/jquery.pleaseWait.js"/>"></script>
	


	<script type="text/javascript">

		/**
		 * */
		function showUpPreloader(targetDiv){
			$('#'+targetDiv).pleaseWait({
				  crazy:false,
				  speed:0,
				  increment: 0,
				  image:'${pageContext.request.contextPath}/resource/assets/preloader.gif',
			}); 
		} 
		 
		/**
			리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
			리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
			리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		*/ 
		function drawTimeseries(tabIndex, varSelected,dStr){
			if(varSelected.length==0) return;
			//if(tabIndex==0){ 
				$.each (varSelected, function(i,itm){ //itm == cb name attr
					
					var detectorNum = itm.substring(itm.lastIndexOf('_')+1,itm.length);
					var typeOfChart = itm.split('_')[1]; //VR01		
					
					if(typeOfChart=='VR01'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Visible SNR ',detectorNum);
						$('#chartContainer').append(vsnrHTML);
						showUpPreloader('ts_'+itm);
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L_1_A_VSNR';
						addChart_VSNR(url_VSNR,dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
						
					}else if(typeOfChart=='VR02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Visible Radiance ',detectorNum);
						$('#chartContainer').append(radianceHTML);
						showUpPreloader('ts_'+itm);
						var url_VR = '<c:url value='/' />timeseries/retrieval/L_1_A_VR';
						addChart_VRadiance(url_VR, dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
						
					}else if(typeOfChart=='VR03'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Visible PRNU ',detectorNum);
						$('#chartContainer').append(radianceHTML);
						showUpPreloader('ts_'+itm);
						var url_VPRNU = '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU';
						addChart_VisiblePRNU(url_VPRNU, dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
						
					}else if(typeOfChart=='IR01'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR Radiance',detectorNum);
						$('#chartContainer').append(radianceHTML);
						showUpPreloader('ts_'+itm);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRRS';
						addChart_IRRS(url, dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
						
					}else if(typeOfChart=='IR02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR NEDT',detectorNum);
						$('#chartContainer').append(radianceHTML);
						showUpPreloader('ts_'+itm);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRNEDT';
						addChart_IR_NEDT(url, dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
						
					}else if(typeOfChart=='IR03'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR PRNU',detectorNum);
						$('#chartContainer').append(radianceHTML);
						showUpPreloader('ts_'+itm);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU';
						addChart_IR_PRNU(url, dStr,'tabidxdoesntneedanymore', detectorNum, 'ts_'+itm);					
					}
					
				});
			//}
			WinMove();
		}
		
		

		
		
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		function meRequest(meDateObj){
			var selected = [];
			$('.checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			});
			drawTimeseries("haha",selected, meDateObj.format('YYYY-MM-DD'));
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
		
		
	 
	     function initMenu() {
	      $('#menu ul').hide();
	      $('#menu ul').children('.current').parent().show();
	      //$('#menu ul:first').show();
	      $('#menu li a').click(
	        function() {
	          var checkElement = $(this).next();
	          if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
	            return false;
	            }
	          if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
	            $('#menu ul:visible').slideUp('normal');
	            checkElement.slideDown('normal');
	            return false;
	            }
	          }
	        );
	      }
		
	</script>
	
	
	
	

	<script type="text/javascript">
		$(document).ready(function() {
		 
		    $("#menu-toggle-2").click(function(e) {
		        e.preventDefault();
		        $("#wrapper").toggleClass("toggled-2");
		        //$('.highcharts-container').each(function() { $(this).resize();});
		        //$('.classySnob').each(function() {  $(this).highcharts().reflow();});
		        $('.classySnob').each(function() {  
//		        	console.log($(this));
//		        	console.log('reflow()');
		        	$(this).highcharts().reflow();
	        	});
		        $('#menu ul').hide();
		    });
			
		    
	    	initMenu();

	    
 			$(".checkboxes :checkbox").change(function(e){
				if ($(this).is(":checked")){
					
					var selected = [];
				    selected.push($(this).attr('name'));
					drawTimeseries('tabidxdoesntneedanymore', selected,$("#meNMSCDemo").val());
					///////////////////////////////////////////
					/* 
					var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'Visible SNR ',$(this).attr('name'));
					$('#chartContainer').append(vsnrHTML);
					addChart_VSNR_bugFixed($("#meNMSCDemo").val(),'tabidxdoesntneedanymore', $(this).attr('name'), 'ts_vsnr_det_'+$(this).attr('name'));					
					 */
					///////////////////////////////////////////
					
					// meCombineDroppables(divId);
					// scroll down transition effect? 
				}else{

					$('#'+$(this).attr('name')).remove();
					
			    	/* var id_getRidOf = 'vsnr_det_'+$(this).attr('name');
			    	
			    	*/
				} 
				WinMove();
			});
			
			
			var selected = [];
			$('.checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			});
			
			drawTimeseries('tabidxdoesntneedanymore', selected,$("#meNMSCDemo").val());
			
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
				//$('#ts_vsnr_det_0').highcharts().reflow(); //test only
				$('.classySnob').each(function() { $(this).highcharts().reflow();});
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
            
           		<div class="pull-left" >
            		<button  type="button" class="meBtn meBtn-primary fa fa-bars" style="margin-bottom:0px;" id="menu-toggle-2"></button>
				</div>
            
            
            
            	 <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5 demo vcenter" style="width:220px;padding-top: 3px;">
		            <input type="text" id="meNMSCDemo" class="form-control" readonly="readonly">
		            <i class="fa fa-calendar"></i>	
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
	            	
	            	
	            	
	            	<div id="social" class="pull-left" style="padding-left:15px;margin-top: 6px;">
						<div class="btn-group" id='control_size'  >
							<button type="button" class="btn btn-warning btn-xs" style="margin-bottom:0px;" id='control_resize_small' title='3 column'><span class="glyphicon glyphicon-th"></span></button>
							<button type="button" class="btn btn-danger btn-xs" style="margin-bottom:0px;" id='control_resize_medium' title='2 column'><span class="glyphicon glyphicon-th-large"></span></button>
							<button type="button" class="btn btn-success btn-xs" style="margin-bottom:0px;" id='control_resize_large' title='1 column'><span class="glyphicon glyphicon-picture"></span></button>
						</div>
					</div>
					
					<!-- full screen mode toggle -->
	           		<div class="pull-left" style="margin-bottom:0px;padding-top:6px;padding-left:5px;" >
 	            		<button  type="button" class="meBtn-primary meBtn-noborder meExpandable " style="font-size:15px;"
	            			onclick="toggleFullScreen()"  title="Full Screen">
	            			<i style="padding-top:9" class="fa fa-arrows-alt" aria-hidden="true"></i>
           				</button> 
					<!-- 
	            		<button  type="button" class="btn meBtn-primary meExpandable fa fa-expand" style="font-size:14px;"
	            			onclick="toggleFullScreen()"  title="Full Screen">
           				</button>
					 -->
					</div>
	            	
					
	            </div>	
            
            
           		<div class="pull-right" style="padding-right:50px;"> 
	            	<ul id="breadcrumbs-one" class="pull-right vcenter" >
						<li><a href="<c:url value='/cmm/main/mainPage.do'/>">Home</a></li>
						<li><a>Level 1 A</a></li>
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
        				$('.checkboxes input:checked').each(function() {
        				    selected.push($(this).attr('name'));
        				});
        				
        				 drawTimeseries('tabidxdoesntneedanymore', selected, start.format('YYYY-MM-DD'));
           		  
           		});
		        	
		    </script>    
		        
		</div>
	</header>
	<!--dateChoooooser--> 
	
	
	<div class="container">	
	
			  <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	  <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	  <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
        	<c:import url="/mePageLink.do?link=QI/QI_LV1A_conditions" />
	        <!-- 
	         -->
        	
        </div><!-- /#sidebar-wrapper -->
        
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid xyz">
                <div class="row">
               		   <div id="chartContainer" class="col-lg-12"></div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
    <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	
	<!-- 
			
		<div  id="chartContainer" class="col-md-11" style="padding-top:20px; ">  
		</div> 
	 -->	
	
	</div>
	 
	<!-- Footer 
	<div id="meFooter"  style="margin-top: 20px; z-index:10000; ">
		<c    import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>	
	
	-->
	
</body>

</html>


