
				
		function getDraggableContainerHTML(leadingStr,meTitle,detNum){
		 	var divId = leadingStr ;//+detNum;
			var divTitle = (detNum!='nodet')? meTitle +' (Detector ' + detNum + ')' : meTitle;
			var chartId = 'ts_'+divId;
			if($('#'+divId).length){
				return;
			}
			var draggableDiv = '';
//			draggableDiv +=	"<div class='meDraggableItem col-xs-"+itemSize+" col-md-"+itemSize+" col-lg-"+itemSize+"+ ' id='" + divId + "'>";
			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"				<div class='preloader'>";
//			draggableDiv +=	"               	<img src='${pageContext.request.contextPath}/resource/assets/preloader.gif' class='devoops-getdata' alt='preloader'/>";
//			draggableDiv +=	"				</div>";
			draggableDiv +=	"		<div class='box'>";
			draggableDiv +=	"			<div class='box-header'>";
			draggableDiv +=	"				<div class='box-name'>";
			draggableDiv +=	"					<i class='fa fa-bar-chart'></i>";
			draggableDiv +=	"					<span>"+divTitle+"</span>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='box-icons'>";
			draggableDiv +=	"					<a class='mePopupWindow'>";
			draggableDiv +=	"						<i class='fa fa-search'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"					<a class='collapse-link'>";
			draggableDiv +=	"						<i class='fa fa-chevron-up'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"					<a class='close-window'>";
			draggableDiv +=	"						<i class='fa fa-times'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='no-move'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"			<div class='box-content'>";
//preloader
//			draggableDiv +=	"				<div class='preloader'>";
//			draggableDiv +=	"               	<img src='${pageContext.request.contextPath}/resource/assets/preloader.gif' class='devoops-getdata' alt='preloader'/>";
//			draggableDiv +=	"				</div>";
			
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;width: 100%;margin: 0 auto;'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}


//		
//		Object.prototype.count = function () {
//		    var count = 0;
//		    for(var prop in this) {
//		        if(this.hasOwnProperty(prop))
//		            count = count + 1;
//		    }
//		    return count;
//		}
//		
		
		var options_singleSeries = {
			    plotOptions: {
			        series: {
			            point: {
			                events: {
			                    mouseOver: function () {
//			                        syncTooltip(this.series.chart.container, this.x - 1);
			                        syncTooltip(this.series.chart.container, this.x);
			                    }
			                }
			            }
			        },
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
			    exporting: {
					enabled:true
		        },
		        
		        credits: {
		            enabled: false
		        },

		        tooltip : {
					shared : false,
					crosshairs:true,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth() - 1, myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						// return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b', newDateMs) + ': ' + this.y;
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M:%S', newDateMs) + ' <br>' + this.y;
					}
			      
				},
				
		        legend: {
	                layout: 'horizontal',
	                y: 0,
	                borderColor: '#aaa', //grayBlue
					borderWidth: 1,
	                itemStyle: {
	                	fontWeight:'normal'
	                }
	            }
		};
		
		// 'fake' scatter plot for multiple series haha 
		var options_multipleSeries = {
				plotOptions: {
					line: {
						marker : {
							enabled : true,
							radius : 3
						},
				        lineWidth: 0, //make the lines disappear
//				        marker : {
//							radius : 3,
//							// "circle", "square", "diamond", "triangle" and "triangle-down".
//							symbol:'circle',
//							states : {
//								hover : {
//									enabled : true,
//								}
//							}
//						}
				    },
					
					series: {
						point: {
							events: {
								mouseOver: function () {
									syncTooltip(this.series.chart.container, this.x);
								}
							}
						}
					    ,states: {
		                    hover: {
		                        enabled: false,
		                        lineWidthPlus:0
		                    }
		                }
					    ,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				exporting: {
					enabled:true
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
					shared: true, //make the tooltip accessible across all series
					crosshairs:true
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
				}
		};

/*		
		function addChart_VSNR(url, dStr,tabIndex,detector,chartId){

			var selectedDetector = [];
			var curr=[];
			
			
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		//$('#'+chartId).append("<div style='float:left'><h4>No data available.</h4><div>");
		        		//$('#'+chartId).append("<span class='pull-left'><h4>No data available.</h4></span>");
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
					var _vsnrChart = $('#'+chartId).highcharts(); 
					selectedDetector = jsonData[detector];				
					for (var i = 0; i < selectedDetector.length; i++) {
							var dateString = selectedDetector[i].DSTR;
							var arr = dateString.split(" ");
							var dStr = arr[0].split("-");
							var tStr = arr[1].split(":");
							var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
							curr.push([d,parseNumericVal(selectedDetector[i].VALUE)]);
					}
					
		        	
		        	//chart goes here
					var _chartInstance;    				
					_chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
							events:{
								 
								redraw: function () {
				                    var label = this.renderer.label('The chart was just redrawn', 80, 65)
				                        .attr({
				                            fill: Highcharts.getOptions().colors[0],
				                            padding: 10,
				                            r: 5,
				                            zIndex: 8
				                        })
				                        .css({
				                            color: '#FFFFFF'
				                        })
				                        .add();
		
				                    setTimeout(function () {
				                        label.fadeOut();
				                    }, 1500);
				                } 
					
							},
							defaultSeriesType : 'line',
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
				            text: 'Visible SNR (Image Pixel-to-Pixel Non-Uniformity)',
				            align: 'center',
				            style:{
				            	font:'bold 16px NanumGothic'
				            }
				        },
				        subtitle: {
				            text: '(Reference Detector: Visible Detector ' + detector + ')',
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
			            	}
				        }
					
						
					})); //haha
		        	
		        	//chart goes here
		        	
					$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
		        		if( val.substr(-1) ===  detector) {
		        			//_chartInstance.series[idx*1].update({ showInLegend: false }, false);
//		        			_chartInstance.series[idx*1].options.showInLegend = false;
		        			return;
	        			}
		        		/////////////////////////////////////////////////////////////////////
						 for (var j = 0; j < curr.length; j++) {
								for (var k = 0; k < vrDataObj.length; k++) {
									var dateString = vrDataObj[k].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									 if (curr[j][0] == d) {
						        		if(curr[j][1]!=null && parseNumericVal(vrDataObj[k].VALUE)!=null){
											eachData.push([d, curr[j][1] - parseNumericVal(vrDataObj[k].VALUE)]);
										}	
									}
								}
						 }	
						 _chartInstance.addSeries({
			        			name: 'Deteoctor ' + idx*1,
			        			data: eachData
	        			});
	//					 _chartInstance.series[idx*1].setData(eachData); 
					});
		        	
		        	
		      		$('#'+chartId).pleaseWait('stop');	
		      		charts.push(_chartInstance);
		      		map.put(chartId, _chartInstance);
				},
				
		        cache: false,
		        
			});	
			
		}
		*/
		
		
		function addChart_VSNR(url, dStr,tabIndex,detector,chartId){
//			console.time('addChart_VSNR()');
			
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
//		        	console.time('addChart_VSNR() rendering Chart and Data');
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
					var _vsnrChart = $('#'+chartId).highcharts(); 
					
		        	//chart goes here
					var _chartInstance;    				
					_chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
							animation: false,
							events:{
							},
							defaultSeriesType : 'line',
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
				            text: 'Visible SNR (Image Pixel-to-Pixel Non-Uniformity)',
				            align: 'center',
				            style:{
				            	font:'bold 16px NanumGothic'
				            }
				        },
				        subtitle: {
				            text: '(Reference Detector: Visible Detector ' + detector + ')',
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
			            	}
				        }
					
						
					})); //haha
		        	
		        	//chart goes here
//					console.time('asyncRender');
					$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
		        		if( val.substr(-1) ===  detector) {
//		        			console.log('detNum is ' + detector + '  if( val.substr(-1) ===  detector) { return; }');
		        			return;
	        			}
		        		/////////////////////////////////////////////////////////////////////
						for (var k = 0; k < vrDataObj.length; k++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[k].D);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d, parseNumericVal(vrDataObj[k].V)]);
						}
						 _chartInstance.addSeries({
			        			name: 'Deteoctor ' + idx*1,
			        			data: eachData
	        			});
	//					 _chartInstance.series[idx*1].setData(eachData); 
					});
//					console.timeEnd('addChart_VSNR() rendering Chart and Data');
		        	
		        	
		      		$('#'+chartId).pleaseWait('stop');	
		      		charts.push(_chartInstance);
		      		map.put(chartId, _chartInstance);
//		      		console.timeEnd('addChart_VSNR()');
				},
				
		        cache: false,
		        
			});	
		}
		
		
		function addChart_VRadiance(url,dStr,tabIndex,detector,chartId){
			
			$.ajax({
				type: 'GET',
				dataType:'json',
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
				url: url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
//					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
						var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Visible Radiance',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + detector + ')',
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
					            	return Highcharts.numberFormat(this.value, 0, '.', ',');
					            }
							},	
						},
					 	series: [
							{name: 'Min',	type:'line',
							  color: '#003399' ,
							  connectNulls:false, data: []}
							  ,{name:'Max',
							  	color: '#f15c80' ,
							  	connectNulls:false, data: []}
							  ,{name:'Mean',
							  	color: '#CCCC00' ,
							  	connectNulls:false, data: []}
							  ,{name:'Median',
							  	color: '#cc66cc' ,
							  	connectNulls:false, data: []}
							  ,{name:'stdev',
							  	color: '#0099CC' ,
							  	connectNulls:false, data: []}
							  
					  ]
						
					})); //haha
		        	
		        	//chart goes here
		        	
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var dateString = vrDataObj[i].DSTR;
							var arr = dateString.split(" ");
							var dStr = arr[0].split("-");
							var tStr = arr[1].split(":");
							var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						_chartInstance.series[idx].setData(eachData); 
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
				},
		        cache: false,
		        
			});	
		}
		
		
		
		
		function addChart_VisiblePRNU(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
						chart : {
							type : 'scatter',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Visible PRNU',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + detector + ')',
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
						}
				
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						//_chartInstance.series[idx].setData(eachData); 
						 /* 
						 */
						 _chartInstance.addSeries({
			        			name: 'Detector ' + detector,
			        			data: eachData
	        			}); 
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
				},
		        cache: false,
		        
			});	
		}
		
		
		
		function addChart_IRRS(url, dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
			//	url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRRS',
				url:url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'IR Radiance',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + detector + ')',
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
					            	return Highcharts.numberFormat(this.value, 0, '.', ',');
					            }
							},	
						}
					 	
					   /* 
					   series: [
							{name: 'Min',
							  color: '#003399' ,
							  connectNulls:false, data: []}
							  ,{name:'Max',
							  	color: '#f15c80' ,
							  	connectNulls:false, data: []}
							  ,{name:'Mean',
							  	color: '#CCCC00' ,
							  	connectNulls:false, data: []}
							  ,{name:'Median',
							  	color: '#cc66cc' ,
							  	connectNulls:false, data: []}
							  ,{name:'stdev',
							  	color: '#0099CC' ,
							  	connectNulls:false, data: []}
							  
					  ],
					   */
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						//_chartInstance.series[idx].setData(eachData); 
						 /* 
						 */
						 _chartInstance.addSeries({
			        			name: vrDataObj[0].TYPENAME,
			        			data: eachData
	        			}); 
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
				},
		        cache: false,
		        
			});	
		}
		
		
		
		
		
		
		
		
		function addChart_IR_NEDT(url, dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRNEDT',
				url: url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'IR NEDT (220K)',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + detector + ')',
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
						}
						,yAxis: {
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
					            	return Highcharts.numberFormat(this.value, 0, '.', ',');
					            }
							}	
						}
					 
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						//_chartInstance.series[idx].setData(eachData); 
						 /* 
						 */
						 _chartInstance.addSeries({
			        			name: 'Channel ' + vrDataObj[0].CHANNEL,
			        			data: eachData
	        			}); 
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	/*
 		        	console.log('===>charts.push : ' + chartId + ' instance reference..');
		        	console.log(_chartInstance);
		        	console.log('charts.length is ');
		        	console.log(charts.length);*/
				},
		        cache: false,
		        
			});	
		}
		
		
		
		
		
		
		
		
		function addChart_IR_PRNU(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU',
				url: url,
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
						chart : {
							type : 'scatter',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'IR PRNU',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + detector + ')',
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
					            	return Highcharts.numberFormat(this.value, 4, '.', ',');
					            }
							}	
						}
					    ,series: [
									{name:'IR PRNU',
									     color:'#7cb5ec',
									     connectNulls:false, data: []}
						 ]
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						
						_chartInstance.series[idx*1].setData(eachData); 
						
						/* _chartInstance.addSeries({
			        			name: vrDataObj[0].TYPENAME,
			        			data: eachData
	        			}); */
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
				},
		        cache: false,
		        
			});	
		}
		

		
		
		
		
		function addChart_L1A_ENV(url,dStr,tabIndex,ENVTypeCode,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU',
				url: url,
				data:'targetDate=' + dStr + '&ENVType='+ ENVTypeCode,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
						chart : {
							type : 'scatter',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'LEVEL 1 A EV',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
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
								text: 'Temperature(K)',
								style : {
									font:'normal 12px Dotum'
								}	
							},
							labels:{
								style : {
									font:'normal 11px Dotum'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 3, '.', ',');
								}
							}	
						}
					/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
						 _chartInstance.addSeries({
			        			name: vrDataObj[0].TYPENAME + ' (' + vrDataObj[0].INSTRUMENTMODESTR + ')',
			        			data: eachData
	        			}); 
						 
					});
					
					var title = getLevel1A_ENV_Title(ENVTypeCode);
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					if(ENVTypeCode=='6' || ENVTypeCode=='20')
					_chartInstance.yAxis[0].axisTitle.attr({
				        text: 'Ampere(A)'
				    });
					_chartInstance.redraw();
					
					
					$('#'+chartId).pleaseWait('stop');	
					charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
				},
				cache: false,
				
			});	
		}
		
		function getLevel1A_ENV_Title(givenTypeId){
			var title='';
			if(givenTypeId=='25'){
				title = 'Telescope Primary Temperature';
			}else if(givenTypeId=='26'){
				title = 'Louver Radiator Temperature';
			}else if(givenTypeId=='34'){
				title = 'Telescope Secondary Temperature #1';
			}else if(givenTypeId=='73'){
				title = 'Telescope Secondary Temperature #2';
			}else if(givenTypeId=='72'){
				title = 'Telescope Secondary Temperature #3';
			}else if(givenTypeId=='36'){
				title = 'Scan Mirror Temperature';
			}else if(givenTypeId=='74'){
				title = 'Primary Baffle Temperature #1';
			}else if(givenTypeId=='75'){
				title = 'Primary Baffle Temperature #2';
			}else if(givenTypeId=='6'){
				title = 'E-W Servo Current';
			}else if(givenTypeId=='20'){
				title = 'N-S Servo Current';
			}
			return title;
		}
		
				
		function addChart_LV1B_QI_NumOfLandmarks(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&imgMode=1&menuId=l1b&submenuId=nVL',
		        success: function(jsonData) {
					if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  							
							defaultSeriesType : 'line',
							animation: false,
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
					
				        series: [
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
						
					})); //haha
					
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].COUNT)]);
						}
						_chartInstance.series[idx*1].setData(eachData); 
					});
		        	$('#'+chartId).pleaseWait('stop');
		        	charts.push(_chartInstance);
		        	map.put(chartId, _chartInstance);
				},
		        cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualStdDev(url,dStr,tabIndex,detector,chartId){
			var whichSide = (detector*1==1)?'NS':'EW';
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  							
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Residual Standard Deviation('+whichSide+')',
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
									return Highcharts.numberFormat(this.value, 5, '.', ',');
								}
							},	
						},
						
						series: [
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
						
					})); //haha
					
					$.each (Object.keys(jsonData), function(idx,val){
						var eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							if(whichSide=='NS'){
								eachData.push([d,parseNumericVal(vrDataObj[i].STDDEVNS)]);
							}else{
								eachData.push([d,parseNumericVal(vrDataObj[i].STDDEVEW)]);
							}
						}
						_chartInstance.series[idx*1].setData(eachData); 
					});
					$('#'+chartId).pleaseWait('stop');
					charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
				},
				cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualQuadraticDistance(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  							
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Residual Quadratic Distance',
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
									return Highcharts.numberFormat(this.value, 5, '.', ',');
								}
							},	
						},
						
						series: [
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
						
					})); //haha
					
					$.each (Object.keys(jsonData), function(idx,val){
						var eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].QUADDIST)]);
						}
						_chartInstance.series[idx*1].setData(eachData); 
					});
					$('#'+chartId).pleaseWait('stop');
					charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
				},
				cache: false	
			});	
		}
		
		
		
		
		function addChart_LV1B_QI_ResidualAvg(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&imgMode=1&menuId=l1b&submenuId=RAVG',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  							
							defaultSeriesType : 'line',
							animation: false,
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
						}
						
						,series: [
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
					   
						
					})); //haha
					
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
			        	eachData2 = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].AVERAGEEW)]);
							eachData2.push([d,parseNumericVal(vrDataObj[i].AVERAGENS)]);
						}
						_chartInstance.series[idx*2].setData(eachData);    //0 2 ..   
						_chartInstance.series[idx*2+1].setData(eachData2);// 1 3 ..
					});
					
					$('#'+chartId).pleaseWait('stop');
					charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
				},
				cache: false	
			});	
		}
		
		
		
		
		
		function addChart_LV1B_EV_SCPOS(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
						chart : {
							type : 'scatter',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Spacecraft Position R(m)',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: 'at Image Center',
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
								text: 'R(m)',
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
						}
					 
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].CENTERX)]);
						}
						//_chartInstance.series[idx].setData(eachData); 
						 /* 
						 */
						 _chartInstance.addSeries({
//			        			name: vrDataObj[0].TYPENAME,
			        			name: 'Center',
			        			data: eachData
	        			}); 
					});
					
 		        	$('#'+chartId).pleaseWait('stop');	
 		        	charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
				},
		        cache: false,
		        
			});	
		}
		
		
		function addChart_LV1B_EV_SCATT(url,dStr,tabIndex,detector,chartId){
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&channel=1&detector='+ detector,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_multipleSeries,{
						chart : {
							type : 'line',
							renderTo : chartId,  								
							defaultSeriesType : 'line',
							animation: false,
							plotBorderWidth : 1,
							plotBorderColor : '#346691', // '#346691',
							zoomType : 'xy',
						},
						title: {
							text: 'Spacecraft Attitude',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(AOCS Local Orbital Frame)',
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
							}	
							
							
						} 
						,series: [
							         {name:'Angle X (deg)',
							        	 color:'#7cb5ec',
							        	 connectNulls:false, data: []}
							         ,{name:'Angle Y (deg)',
							        	 color:'#434348',
							        	 // color:'#e4d354',
							        	 connectNulls:false, data: []}
							         ,{name:'Angle Z (deg)',
							        	 color:'#f15c80',
							        	 connectNulls:false, data: []}
							         ]
						
					})); //haha

					
					
					//chart goes here
					$.each (Object.keys(jsonData), function(idx,val){
						VALX = [];
						VALY = [];
						VALZ = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							VALX.push([d,parseNumericVal(vrDataObj[i].VALUEX)]);
							VALY.push([d,parseNumericVal(vrDataObj[i].VALUEY)]);
							VALZ.push([d,parseNumericVal(vrDataObj[i].VALUEZ)]);
						}
						_chartInstance.series[0].setData(VALX);
						_chartInstance.series[1].setData(VALY);
						_chartInstance.series[2].setData(VALZ);
//						_chartInstance.series[idx].setData(eachData); 
						/* 
						 */
//						_chartInstance.addSeries({
//							name: vrDataObj[0].TYPENAME,
//							data: eachData
//						}); 
					});
					
					$('#'+chartId).pleaseWait('stop');	
					charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
				},
				cache: false,
				
			});	
		}
		
		
		
		
		String.prototype.endsWith = function(suffix) {
	   		return this.indexOf(suffix, this.length - suffix.length) !== -1;
		};
		
	
			
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
		

		
		