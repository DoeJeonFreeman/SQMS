

		function getDraggableContainerHTML(leadingStr, meTitle, titleWithDStr, ITEM_SIZE){
			var idx = $("#tabs").tabs('option', 'active');
			
		 	var divId = 't'+idx+'_'+ leadingStr;//+detNum;
//			var divTitle =  meTitle.split('-').join(' ') + ' ' ;
//			divTitle = divTitle.split('_').join(' - ');
		 	var divTitle =  meTitle;
			divTitle += (titleWithDStr=='nodet')? '' : ' (Detector '+(titleWithDStr*1+1)+')'
		 	
			
			var chartId = 't'+idx+'_ts_'+leadingStr;
			
			if($('#'+divId).length){
//				sysout('if chartWrapperHTML [#' +divId+'] is already exiests ')
//				sysout('then RETURN;')
				return;
			}
			
			
			var draggableDiv = '';
//			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box meDraggableItem col-xs-"+ITEM_SIZE+" col-md-"+ITEM_SIZE+" col-lg-"+ITEM_SIZE+"' id='" + divId + "'>";
			draggableDiv +=	"			<div class='box-header'>";
			draggableDiv +=	"				<div class='box-name'>";
			draggableDiv +=	"					<i class='fa fa-bar-chart'></i>";
			draggableDiv +=	"					<span>"+divTitle+"</span>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='box-icons'>";
//			draggableDiv +=	"					<a class='mePopupWindow'>";
//			draggableDiv +=	"						<i class='fa fa-search'></i>";
//			draggableDiv +=	"					</a>";
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
			
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;margin: 0 auto;'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
//			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}
		
		
		function getDraggableImageContainer(leadingStr, meTitle, titleWithDStr, ITEM_SIZE){
			leadingStr = leadingStr.replace(/\(/g,"");
			leadingStr = leadingStr.replace(/\)/g,"");
			leadingStr = leadingStr.replace(/\./g,"");
			leadingStr = leadingStr.replace(/\//g,"");
			leadingStr = leadingStr.replace(/ /g,"");
			
			var idx = $("#tabs").tabs('option', 'active');
			
			var divId = 't'+idx+'_'+ leadingStr;//+detNum;
//			var divTitle =  meTitle.split('-').join(' ') + ' ' + titleWithDStr;
			var divTitle =  meTitle + ' ' + titleWithDStr;
			divTitle = divTitle.split('_').join(' - ');
			
			var chartId = 't'+idx+'_ts_'+leadingStr;
			
			var imageTypeAndDate = "\"" +  leadingStr + "\"";
			
			if($('#'+divId).length){
//				sysout('if chartWrapperHTML [#' +divId+'] is already exiests ')
//				sysout('then RETURN;')
				return false;
			}
			
			sysout('ITEM_SIZE is : ' + ITEM_SIZE);
			var draggableDiv = '';
//			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box meDraggableItem col-xs-"+ITEM_SIZE+" col-md-"+ITEM_SIZE+" col-lg-"+ITEM_SIZE+"' id='" + divId + "'>";
			draggableDiv +=	"			<div class='box-header'>";
			draggableDiv +=	"				<div class='box-name'>";
			draggableDiv +=	"					<i class='fa fa-bar-chart'></i>";
			draggableDiv +=	"					<span>"+divTitle+"</span>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='box-icons'>";
//			draggableDiv +=	"					<a class='mePopupWindow'>";
//			draggableDiv +=	"						<i class='fa fa-search'></i>";
//			draggableDiv +=	"					</a>";
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
			
		/*	
		 * nav-circlepop
		 * 
		 */	
			draggableDiv +=	"				<nav class='nav-circlepop djf'>";
			draggableDiv +=	"               		<a class='prev' id='carousel_prev'  onclick='changeImgSrc(this.id,$(this))'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"					<a class='next' id='carousel_next'  onclick='changeImgSrc(this.id,$(this))'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"				</nav>";
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style=''></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
//			draggableDiv +=	"	</div>";
			
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
	/*	
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
		};*/
		
		
		
		// 'real' scatter plot for Level 2 daily validation haha 
		var options_visibleLine = {
				chart : {
					type : 'scatter',
//					renderTo : chartId,  								
					defaultSeriesType : 'scatter',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 1, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'circle' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
				    },
				    scatter:{
				    	marker : {
				    		//symbol:'square',
							radius : 2,
						}
				    },
				    
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x);
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
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false// canDropLabels==true
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false
		        },
				
				credits: {
					enabled: false
				},
				
//				tooltip : {
//					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
//					shared: true, //make the tooltip accessible across all series
//					crosshairs:true
//				},
				tooltip : {
					shared : false,
					
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M:%S', newDateMs) + '<br/>' + this.y;
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
				}, 
		        xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							var myDate = new Date(this.value);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
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
		};
		
		
		
		
		
		// 'fake' scatter plot for multiple series haha 
		var options_multipleSeries = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
				    },
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x); // 
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
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
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false// canDropLabels==true
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false
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
				}, 
		        xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							var myDate = new Date(this.value);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
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
		};
		
		// 'fake' scatter plot for multiple series - Level 1 B 품질지표
		var options_multipleSeries_L1B_QI = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
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
					chartOptions: { // specific options for the exported image
						plotOptions: {
							series: {
								dataLabels: {
									enabled: false// canDropLabels==true
								}
							}
						}
					},
					scale: 3,
					fallbackToExportServer: false
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
					shared: true,  //오미  
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
				}, 
				xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							var myDate = new Date(this.value);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
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
		};

		
		var options_multipleSeries_scatter = {
				chart : {
					type : 'scatter',
//					renderTo : chartId,  								
					defaultSeriesType : 'scatter',  	
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					scatter : {
						marker : {
							radius : 1.5,
							// "circle", "square", "diamond", "triangle" and "triangle-down".
							symbol:'square'
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x);
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
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false
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
				},
		        xAxis : {
					type : 'datetime',
					tickColor: '#346691',
					labels : {
						formatter : function() {
							var myDate = new Date(this.value);
							var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
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
		};
		
		
	/*	
		function addChartTester(url, dStr, tabIndex,detector, chartId){
			function getData(n) {
		        var arr = [],
		            i,
		            a,
		            b,
		            c,
		            spike;
		        for (i = 0; i < n; i = i + 1) {
		            if (i % 100 === 0) {
		                a = 2 * Math.random();
		            }
		            if (i % 1000 === 0) {
		                b = 2 * Math.random();
		            }
		            if (i % 10000 === 0) {
		                c = 2 * Math.random();
		            }
		            if (i % 50000 === 0) {
		                spike = 10;
		            } else {
		                spike = 0;
		            }
		            arr.push([
		                i,
		                2 * Math.sin(i / 100) + a + b + c + spike + Math.random()
		            ]);
		        }
		        return arr;
		    }
		    var n = 500000,
		        data = getData(n);


		    $('#container').highcharts({

		        chart: {
		            zoomType: 'x'
		        },

		        title: {
		            text: 'Trimmed Highcharts drawing ' + n + ' points'
		        },

		        subtitle: {
		            text: 'Using the experimental Highcharts Boost module'
		        },

		        tooltip: {
		            valueDecimals: 2
		        },

		        series: [{
		            data: data,
		            lineWidth: 0.5
		        }]

		    });
		}
		*/
		
		function addChart_VSNR(url, dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_VSNR()','begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
		        success: function(jsonData) {

					var _vsnrChart = $('#'+chartId).highcharts(); 
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
		        	//chart goes here
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'scatter',  //this is a 'fake' scatter plot						
//							animation: false,
//							events:{
//							},
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
				            text: 'Visible SNR',
				            align: 'center',
				            style:{
				            	font:'bold 16px NanumGothic'
				            }
				        },
				        subtitle: {
//				            text: '(Reference Detector: Visible Detector ' + detector + ')',
				            text: null,
				            align: 'center',
				            style:{
				            	font:'normal 13px NanumGothic'
				            }
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
			                text: null,
		                	style : {
		                		font:'normal 12px NanumGothic'
		                	}	
			            },
			            labels:{
				            style : {
			            		font:'normal 11px NanumGothic'
				            },
//				            formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
				            		//return Highcharts.numberFormat(this.value, 2, '.', ',');
//				            }
			            	},
			            	plotLines:[{
			                    value:10,
			                    color: '#ff2a2c',
			                    width:1,
			                    zIndex:4,
			                    label:{text:'Requirement'}
		                }]
				            /*,plotLines:[{
			                    value:2.7,
			                    color: '#ff0000',
			                    width:1,
			                    zIndex:4,
			                    label:{text:'outlier'}
			                }]
				            ,plotLines:[{
			                    value:2.7,
			                    color: '#ff2a2c',
			                    width:1,
			                    zIndex:4,
			                    label:{text:'plotLine#01'}
			                }]
				             */
				        }
				        
					
						
					})); //haha
		        	
		        	//chart goes here
//					console.time('asyncRender');
					$.each (Object.keys(jsonData), function(idx,val){
				        	var eachData = [];
			        		var vrDataObj = jsonData[val];
		        	/*
		        		if( val.substr(-1) ===  detector) {
//		        			sysout('detNum is ' + detector + '  if( val.substr(-1) ===  detector) { return; }');
		        			return;
	        			}
	        		*/	
		        		/////////////////////////////////////////////////////////////////////
						for (var k = 0; k < vrDataObj.length; k++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[k].D);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d, parseNumericVal(vrDataObj[k].V)]);
						}
						 _chartInstance.addSeries({
//			        			name: 'Deteoctor ' + idx*1,
			        			name: 'Deteoctor ' + (idx*1+1),
			        			data: eachData
	        			});
	//					 _chartInstance.series[idx*1].setData(eachData); 
					});
//					console.timeEnd('addChart_VSNR() rendering Chart and Data');
		        	
		        	
		      		//$('#'+chartId).pleaseWait('stop');	
		      		//charts.push(_chartInstance);
		      		
//		      		var idx = 't' + $("#tabs").tabs('option', 'active') + '_';
		      		map.put(chartId, _chartInstance);
		      		systime('addChart_VSNR()', 'end');
				},
				
		        cache: false,
		        
			});	
		}
		
		
		function addChart_VisiblePRNU(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_VisiblePRNU()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr +'&dBegin=' + dBegin +  '&channel=1&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Visible PRNU',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
				            text: '(Reference Detector: Detector ' + ((detector*1)+1) + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            	//return Highcharts.numberFormat(this.value, 2, '.', ',');
//					            }
							},	
							plotLines:[{
				                    value:0.8,
				                    color: '#ff2a2c',
				                    width:1,
				                    zIndex:4,
				                    label:{text:'Specification'}
			                }]
						}
				
					})); //haha
		        	
		        	//chart goes here
		        	
				$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
		        		if( val.substr(-1) ===  detector) {
	//	        			sysout('detNum is ' + detector + '  if( val.substr(-1) ===  detector) { return; }');
		        			return;
	        			}
	        		/////////////////////////////////////////////////////////////////////
					for (var k = 0; k < vrDataObj.length; k++) {
						var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[k].D);
						d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
						eachData.push([d, parseNumericVal(vrDataObj[k].V)]);
					}
					 _chartInstance.addSeries({
//		        			name: 'Deteoctor ' + idx*1,
		        			name: 'Deteoctor ' + (idx*1+1),
		        			data: eachData
        			});
//					 _chartInstance.series[idx*1].setData(eachData); 
				});
	        	
	      		//$('#'+chartId).pleaseWait('stop');	
	      		//charts.push(_chartInstance);
//	      		var idx = 't' + $("#tabs").tabs('option', 'active') + '_';
	      		map.put(chartId, _chartInstance);
 		        	systime('addChart_VisiblePRNU()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		function addChart_VRadiance(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_VRadiance()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Visible Radiance',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + (detector*1+1) + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
							},	
						},
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
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
// 		        	sysout('checked:: ' +chartId);
 		        	systime('addChart_VRadiance()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		function addChart_MOON_SLOPE(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_moonSlope()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr +'&dBegin=' + dBegin +  '&channel=1&detector='+ detector,
		        success: function(jsonData) {

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}	
		        	
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Moon Slope',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + (detector*1+1) + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 2, '.', ',');
//					            }
							},	
//							plotLines:[{
//				                    value:0.8,
//				                    color: '#ff2a2c',
//				                    width:1,
//				                    zIndex:4,
//				                    label:{text:'Specification'}
//			                }]
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
						 _chartInstance.addSeries({
			        			name: 'Detector ' + detector,
			        			data: eachData
						 }); 
				});
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	systime('addChart_moonSlope()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		
		
		function addChart_IRRS(url, dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_IRRS()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
			//	url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRRS',
				url:url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
							        	
					
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'IR Radiance',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Detector ' + (detector*1+1) + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
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
			        			name: vrDataObj[0].TYPENAME,
			        			data: eachData
	        			}); 
					});
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	systime('addChart_IRRS()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		function getAppropriateChannelName(cid){
			if(cid=='2') return 'SWIR';
			else if(cid=='3') return 'VW';
			else if(cid=='4') return 'IR1';
			else if(cid=='5') return 'IR2';
		}
		/**
		 * 채널넘버(SWIR,WV,IR1,IR2)는 기존 detector로 받자(노드 키 새로 만들기 귀찮) 
		 * */
		function addChart_IR_NEDT(url, dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_IR_NEDT()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRNEDT',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel='+detector+'&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: getAppropriateChannelName(detector) + ' NEDT',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Channel ' + detector + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            		//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
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
			        			name: vrDataObj[0].SNAME,
			        			data: eachData
	        			}); 
					});
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	/*
 		        	sysout('===>//charts.push : ' + chartId + ' instance reference..');
		        	sysout(_chartInstance);
		        	sysout('charts.length is ');
		        	sysout(charts.length);*/
 		        	systime('addChart_IR_NEDT()', 'end');
				},
		        cache: false,
			});	
		}
		
		
		
		/**
		 * 채널넘버(SWIR,WV,IR1,IR2)는 기존 detector로 받자(노드 키 새로 만들기 귀찮) 
		 * */
		function addChart_IR_PRNU(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
			systime('addChart_IR_PRNU()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRNEDT',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel='+detector+'&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: getAppropriateChannelName(detector) + ' PRNU',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: '(Channel ' + detector + ')',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
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
			        			name: vrDataObj[0].SNAME,
			        			data: eachData
						 }); 
				});
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	systime('addChart_IR_PRNU()', 'end');
				},
		        cache: false,
		        
			});	
		}
		

		
		
		
		
		function addChart_L1A_ENV(url,dStr, dBegin, tabIndex,ENVTypeCode,chartId,chartingPeriod){
			systime('addChart_L1A_ENV()', 'begin');
			sysout("ENV_CODE :: " + ENVTypeCode)
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&ENVType='+ ENVTypeCode,
				success: function(jsonData) {
//					if(jsonData.length==0){
//						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						return;
//					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{		        	
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 3, '.', ',');
//								}
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
					if(ENVTypeCode=='6' || ENVTypeCode=='20'){
						_chartInstance.yAxis[0].axisTitle.attr({
					        text: 'Ampere(A)'
					    });
					}else{
						_chartInstance.yAxis[0].addPlotLine({
							value:getLevel1A_ENV_upperLimit(ENVTypeCode),
							color: '#008080',
							width:1,
							zIndex:4,
							label:{text:'Upper limit'}
						});
						_chartInstance.yAxis[0].addPlotLine({
							value:getLevel1A_ENV_lowerLimit(ENVTypeCode),
							color: '#ffa500',
							width:1,
							zIndex:4,
							label:{text:'Lower limit'}
						});
					}	
					
					_chartInstance.redraw();
					
					
					//$('#'+chartId).pleaseWait('stop');	
					//charts.push(_chartInstance);
//					map.put(chartId, _chartInstance);
					systime('addChart_L1A_ENV()', 'end');
				},
				cache: false,
				
			});	
		}
		
		
		
		function getLevel1A_ENV_upperLimit(givenTypeId){
			var limit= 0;
			if(givenTypeId=='25'){
				limit = 305;
			}else if(givenTypeId=='26'){
				limit = 308;
			}else if(givenTypeId=='34' || givenTypeId=='73' || givenTypeId=='72'){
				limit = 318;
			}else if(givenTypeId=='36'){
				limit = 338;
			}else if(givenTypeId=='74' || givenTypeId=='75'){
				limit = 323;
			}else if(givenTypeId=='6'){
//				limit = 'E-W Servo Current';
			}else if(givenTypeId=='20'){
//				limit = 'N-S Servo Current';
			}
			return limit;
		}
		
		function getLevel1A_ENV_lowerLimit(givenTypeId){
			var limit= 0;
			if(givenTypeId=='25'){
				limit = 280;
			}else if(givenTypeId=='26'){
				limit = 266;
			}else if(givenTypeId=='34' || givenTypeId=='73' || givenTypeId=='72'){
				limit = 272;
			}else if(givenTypeId=='36'){
				limit = 273;
			}else if(givenTypeId=='74' || givenTypeId=='75'){
				limit = 273;
			}else if(givenTypeId=='6'){
//				limit = 'E-W Servo Current';
			}else if(givenTypeId=='20'){
//				limit = 'N-S Servo Current';
			}
			return limit;
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
		
				
		function addChart_LV1B_QI_NumOfLandmarks(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_NumOfLandmarks()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr +'&dBegin=' + dBegin +  '&imgMode=1&menuId=l1b&submenuId=nVL',
		        success: function(jsonData) {
//					if(jsonData.length==0){
//		        			$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        			return;
//		        		}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
				            	font:'normal 13px NanumGothic'
				            }
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
			                		font:'normal 12px NanumGothic'
			                	}	
				            },
				            labels:{
					            style : {
				            		font:'normal 11px NanumGothic'
					            },
//					            formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            		//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
			            	},	
				        },
					
				        //IMGMODEID 0:FD 1:ENH 2:LSH 3:APNH 4:LA 
				        
				        series: [
						    // {
						    	// name: 'Detector 0',
			 	             // // visible:false,
			 	             // // showInLegend:false,
			     	         // connectNulls:false, data: []}
			     	         {name:'FD (FULL)',
				     	         color:'#7cb5ec',
			    	 	         connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL)',
			     	      	     color:'#f15c80',
			     	       	  	 connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL)',
			     	         	color:'#f7a35c',
			     	         	connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL)',
			     	        	 color:'#434348',
			     	        	 // color:'#e4d354',
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
						sysout('IDX is ' + idx*1);
						sysout(eachData);
					});
		        	//$('#'+chartId).pleaseWait('stop');
		        	//charts.push(_chartInstance);
//		        	map.put(chartId, _chartInstance);
		        	systime('addChart_LV1B_QI_NumOfLandmarks()', 'end');
				},
		        cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualStdDev(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualStdDev()', 'begin');
			var whichSide = (detector*1==1)?'NS':'EW';
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
//					if(jsonData.length==0){
//						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						return;
//					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 5, '.', ',');
//								}
							},	
						},
						
						series: [
						         {name:'FD (FULL)',
						        	 color:'#7cb5ec',
						        	 connectNulls:false, data: []}
						         ,{name:'ENH (FULL)',
						        	 color:'#f15c80',
						        	 connectNulls:false, data: []}
						         ,{name:'LSH (FULL)',
						        	 color:'#f7a35c',
						        	 connectNulls:false, data: []}
						         ,{name:'APNH (FULL)',
						        	 color:'#434348',
						        	 // color:'#e4d354',
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
					//$('#'+chartId).pleaseWait('stop');
					//charts.push(_chartInstance);
//					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualStdDev()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualQuadraticDistance(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualQuadraticDistance()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
//					if(jsonData.length==0){
//						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						return;
//					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 5, '.', ',');
//								}
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
						         ,{name:'ENH (FULL)',
						        	 color:'#f15c80',
						        	 connectNulls:false, data: []}
						         ,{name:'LSH (FULL)',
						        	 color:'#f7a35c',
						        	 connectNulls:false, data: []}
						         ,{name:'APNH (FULL)',
						        	 color:'#434348',
						        	 // color:'#e4d354',
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
					//$('#'+chartId).pleaseWait('stop');
					//charts.push(_chartInstance);
//					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualQuadraticDistance()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		
		function addChart_LV1B_QI_ResidualAvg(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualAvg()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=RAVG',
				success: function(jsonData) {
//					if(jsonData.length==0){
//						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						return;
//					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 5, '.', ',');
//					            }
							},	
						}
						
						,series: [
							 {name:'FD (FULL) (EW)',
							  	color:'#7cb5ec',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
							 ,{name:'FD (FULL) (NS)',
							  	color:'#7cb5ec',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL) (EW)',
			     	         	color:'#f15c80',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL) (NS)',
			     	         	color:'#f15c80',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL) (EW)',
			     	         	color:'#f7a35c',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL) (NS)',
			     	         	color:'#f7a35c',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL) (EW)',
			     	        	 color:'#434348',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	        	 connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL) (NS)',
			     	        	 color:'#434348',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	        	 connectNulls:false, data: []}
			     	         ,{name:'LA (FULL) (EW)',
			     	         	color:'#8085e8',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LA (FULL) (NS)',
			     	         	color:'#8085e8',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
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
					
					//$('#'+chartId).('stop');
					//charts.push(_chartInstance);
//					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualAvg()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		
		
		function addChart_LV1B_EV_SCPOS(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_EV_SCPOS()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
//		        	if(jsonData.length==0){
//		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//		        		return;
//		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 0, '.', ',');
//					            }
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
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	systime('addChart_LV1B_EV_SCPOS()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		function addChart_LV1B_EV_SCATT(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_EV_SCATT()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				success: function(jsonData) {
//					if(jsonData.length==0){
//						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						return;
//					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					var _chartInstance;    				
				 	if(jsonData.length==0){
				        	map.put(chartId, _chartInstance);
			        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
			        		return;
			        	}
					_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
					//chart goes here
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
								font:'normal 13px NanumGothic'
							}
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
								text: null,
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
//								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									//return Highcharts.numberFormat(this.value, 2, '.', ',');
//								}
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
					
					//$('#'+chartId).pleaseWait('stop');	
					//charts.push(_chartInstance);
//					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_EV_SCATT()', 'end');
				},
				cache: false,
				
			});	
		}
		
		
		
		
		
//=======================================================================================================================================		
//=======================================================================================================================================		
//==== Level 2 Daily Validation Begin====================================================================================================
//=======================================================================================================================================		
//=======================================================================================================================================		
		
		// 1. CLA
		// 1. CLA
		// 1. CLA
		// 1. CLA
				function addChart_L2_CLA(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_CLA()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				        success: function(jsonData) {
//				        	if(jsonData.length==0){
//				        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//				        		return;
//				        	}

							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
								
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
				        	//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'CA 검증 지표 (COMS vs. GTS)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},

								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
								  	 min: 0,
								  	 max:1,
								  	tickInterval: 0.25,
									lineWidth:0,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'R / Bias / RMSE',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//							            }
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
									tickInterval: 25,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'vam_num',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//							            }
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
							 	series: [
									{name: 'Bias',	yAxis : 0, type : 'scatter',
									  color: '#003399' ,
									  connectNulls:false, data: []}
									  ,{name:'RMSE', yAxis : 0, type : 'scatter',
									  	color: '#f15c80' ,
									  	connectNulls:false, data: []}
									  ,{name:'R', yAxis : 0, type : 'scatter',
									  	color: '#CCCC00' ,
									  	connectNulls:false, data: []}
									  ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
									  	color: '#0099CC' ,
									  	connectNulls:false, data: []}
							  ]
								
							})); //haha
				        	
				        	//chart goes here
				        	
				        	
		 		        	$.each (Object.keys(jsonData), function(idx,val){
					        	eachData_BIAS = [];
					        	eachData_RMSE = [];
					        	eachData_R = [];
					        	eachData_VAM_NUM = [];
					        	
				        		var vrDataObj = jsonData[val];
				        		
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS)]);
									eachData_RMSE.push([d,parseNumericVal(vrDataObj[i].RMSE)]);
									eachData_R.push([d,parseNumericVal(vrDataObj[i].R)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
								}
								_chartInstance.series[0].setData(eachData_BIAS); 
								_chartInstance.series[1].setData(eachData_RMSE); 
								_chartInstance.series[2].setData(eachData_R); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
							});
							
		 		        	//$('#'+chartId).pleaseWait('stop');	
		 		        	//charts.push(_chartInstance);
		 		        	map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
		 		        	systime('addChart_L2_CLA()', 'end');
						},
				        cache: false,
				        
					});	
				}
				
				// 2. CLD
				// 2. CLD
				// 2. CLD
				// 2. CLD
				// PC, POD, FAR, PSS, HSS 값 각각을 scatter yaxis0
				//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1
				function addChart_L2_CLD(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_CLD()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
							//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'CLD 검증 지표 (COMS vs. MOD35)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
									max:1,
									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / POD / FAR / PSS / HSS',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//										}
									}
								}, { 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / Hit / false_alarm / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
//								        	 color: '#003399' ,
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
//								        	 color: '#f15c80' ,
								        	 connectNulls:false, data: []}
								         ,{name:'FAR', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'PSS', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'HSS', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'Hit', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1, // pointInterval: 60 * 5 * 1000, //5 min
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							// PC, POD, FAR, PSS, HSS 값 각각을 scatter yaxis0
							//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1					
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_POD = [];
								eachData_FAR = [];
								eachData_PSS = [];
								eachData_HSS = [];
								eachData_VAM_NUM = [];
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_FAR.push([d,parseNumericVal(vrDataObj[i].FAR)]);
									eachData_PSS.push([d,parseNumericVal(vrDataObj[i].PSS)]);
									eachData_HSS.push([d,parseNumericVal(vrDataObj[i].HSS)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_POD); 
								_chartInstance.series[2].setData(eachData_FAR); 
								_chartInstance.series[3].setData(eachData_PSS); 
								_chartInstance.series[4].setData(eachData_HSS); 
								_chartInstance.series[5].setData(eachData_VAM_NUM); 
								_chartInstance.series[6].setData(eachData_HIT); 
								_chartInstance.series[7].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[8].setData(eachData_MISS); 
								_chartInstance.series[9].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_CLD()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
				
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				function addChart_L2_FOG(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_FOG()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'FOG 검증 지표 (COMS vs. GTS)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
//									max:1,
//									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'Hit / false_alarm',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 1, '.', ',');
//										}
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'hit',	yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_VAM_NUM = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);							
								}
								_chartInstance.series[0].setData(eachData_HIT); 
								_chartInstance.series[1].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[2].setData(eachData_VAM_NUM); 
								_chartInstance.series[3].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_FOG()', 'end');
						},
						cache: false,
						
					});	
				}
				
				// 3.2. FOG  COMS vs. Ground  
				// 3.2. FOG
				// 3.2. FOG
				// 3.2. FOG
				// 3.2. FOG
				// 3.2. FOG
				function addChart_L2_FOG2(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_FOG2()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
							//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'FOG 검증 지표 (COMS vs. Ground)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
//									max:1,
//									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'Hit / false_alarm',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 1, '.', ',');
//										}
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'hit',	yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_VAM_NUM = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);							
								}
								_chartInstance.series[0].setData(eachData_HIT); 
								_chartInstance.series[1].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[2].setData(eachData_VAM_NUM); 
								_chartInstance.series[3].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_FOG2()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
				
				// 4. AI
				// 4. AI
				// 4. AI
				// 4. AI
				// 4. AI
				// PC, BIAS, POD 값을 각각 scatter 
				// Vam_num, miss, cor_neg 오른쪽 라인

				function addChart_L2_AI(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_AI()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
							
							//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'AI 검증 지표 (COMS vs. OMI)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
									max:1,
									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / Bias / POD',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//										}
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / miss / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'Bias', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_BIAS = [];
								eachData_POD = [];
								eachData_VAM_NUM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_BIAS); 
								_chartInstance.series[2].setData(eachData_POD); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
								_chartInstance.series[4].setData(eachData_MISS); 
								_chartInstance.series[5].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_AI()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
				// 5. RI
				// 5. RI
				// 5. RI
				// PC, BIAS, POD 값을 각각 scatter 
				// Vam_num, miss, cor_neg 오른쪽 라인
				
				function addChart_L2_RI(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_RI()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
							
							//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'RI 검증 지표 (COMS vs. AWS)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									//min: 0,
									//max:1,
									//tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / R / Bias / RMSE / POD',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//										}
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / miss / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'Bias All', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'RMSE All', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'R All', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_BIAS = [];
								eachData_RMSE = [];
								eachData_R = [];
								eachData_POD = [];
								eachData_VAM_NUM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS_ALL)]);
									eachData_RMSE.push([d,parseNumericVal(vrDataObj[i].RMSE_ALL)]);
									eachData_R.push([d,parseNumericVal(vrDataObj[i].R_A)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_BIAS); 
								_chartInstance.series[2].setData(eachData_RMSE); 
								_chartInstance.series[3].setData(eachData_R); 
								_chartInstance.series[4].setData(eachData_POD); 
								_chartInstance.series[5].setData(eachData_VAM_NUM); 
								_chartInstance.series[6].setData(eachData_MISS); 
								_chartInstance.series[7].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_RI()', 'end');
						},
						cache: false,
						
					});	
				}
				
				function addChart_L2_SST(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_SST()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				        success: function(jsonData) {
//					        	if(jsonData.length==0){
//					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//					        		return;
//					        	}

							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
								
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
				        	//chart goes here
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'SST 검증 지표 (COMS vs. Buoy)',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},

								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
								  	// min: 0,
								  	// max:1,
								  	//tickInterval: 0.25,
									lineWidth:0,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'R / Bias / RMSE',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//							            }
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
									tickInterval: 25,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'vam_num',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
							            		//return Highcharts.numberFormat(this.value, 0, '.', ',');
//							            }
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
							 	series: [
									{name: 'Bias',	yAxis : 0, type : 'scatter',
									  color: '#003399' ,
									  connectNulls:false, data: []}
									  ,{name:'RMSE', yAxis : 0, type : 'scatter',
									  	color: '#f15c80' ,
									  	connectNulls:false, data: []}
									  ,{name:'R', yAxis : 0, type : 'scatter',
									  	color: '#CCCC00' ,
									  	connectNulls:false, data: []}
									  ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
									  	color: '#0099CC' ,
									  	connectNulls:false, data: []}
							  ]
								
							})); //haha
				        	
				        	//chart goes here
				        	
				        	
		 		        	$.each (Object.keys(jsonData), function(idx,val){
					        	eachData_BIAS = [];
					        	eachData_RMSE = [];
					        	eachData_R = [];
					        	eachData_VAM_NUM = [];
					        	
				        		var vrDataObj = jsonData[val];
				        		
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS)]);
									eachData_RMSE.push([d,parseNumericVal(vrDataObj[i].RMSE)]);
									eachData_R.push([d,parseNumericVal(vrDataObj[i].R)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
								}
								_chartInstance.series[0].setData(eachData_BIAS); 
								_chartInstance.series[1].setData(eachData_RMSE); 
								_chartInstance.series[2].setData(eachData_R); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
							});
							
		 		        	//$('#'+chartId).pleaseWait('stop');	
		 		        	//charts.push(_chartInstance);
		 		        	map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
		 		        	systime('addChart_L2_SST()', 'end');
						},
				        cache: false,
				        
					});	
				}
				
				
				function addChart_L2_Type4(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod,title){
					systime('addChart_L2_TYPE4()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				        success: function(jsonData) {
//				        	if(jsonData.length==0){
//				        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
//				        		return;
//				        	}
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
									renderTo : chartId,  								
								},
								title: {
									text: title,
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},

								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
								  	 min: 0,
								  	 max:1,
								  	tickInterval: 0.25,
									lineWidth:0,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'R / Bias / RMSE',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//							            }
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
									tickInterval: 25,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'vam_num',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//							            }
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
							 	series: [
									{name: 'Bias',	yAxis : 0, type : 'scatter',
									  color: '#003399' ,
									  connectNulls:false, data: []}
									  ,{name:'RMSE', yAxis : 0, type : 'scatter',
									  	color: '#f15c80' ,
									  	connectNulls:false, data: []}
									  ,{name:'R', yAxis : 0, type : 'scatter',
									  	color: '#CCCC00' ,
									  	connectNulls:false, data: []}
									  ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
									  	color: '#0099CC' ,
									  	connectNulls:false, data: []}
							  ]
								
							})); //haha
				        	
				        	//chart goes here
				        	
		 		        	$.each (Object.keys(jsonData), function(idx,val){
					        	eachData_BIAS = [];
					        	eachData_RMSE = [];
					        	eachData_R = [];
					        	eachData_VAM_NUM = [];
				        		var vrDataObj = jsonData[val];
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS)]);
									eachData_RMSE.push([d,parseNumericVal(vrDataObj[i].RMSE)]);
									eachData_R.push([d,parseNumericVal(vrDataObj[i].R)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
								}
								_chartInstance.series[0].setData(eachData_BIAS); 
								_chartInstance.series[1].setData(eachData_RMSE); 
								_chartInstance.series[2].setData(eachData_R); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
							});
							
		 		        	//$('#'+chartId).pleaseWait('stop');	
		 		        	map.put(chartId, _chartInstance);
		 		        	systime('addChart_L2_TYPE4()', 'end');
						},
				        cache: false,
				        
					});	
				}
				
				
				// SSI
				// SSI
				// SSI
				// SSI
				// SSI
				// PC, POD, FAR, TS, POFD 값 각각을 scatter yaxis0
				//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1
				function addChart_L2_Type10(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod,title){
					systime('addChart_L2_TYPE10()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
//							if(jsonData.length==0){
//								$('#'+chartId).append("<span class='clear'>No data available.</span>");
//								return;
//							}
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							var _chartInstance;    				
						 	if(jsonData.length==0){
						        	map.put(chartId, _chartInstance);
					        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
					        		return;
					        	}
							_chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
							//chart goes here
								chart : {
									renderTo : chartId,  								
								},
								title: {
									text: title,
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
									max:1,
									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / POD / FAR / TS / POFD',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 2, '.', ',');
//										}
									}
								}, { 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / Hit / false_alarm / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
//										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											//return Highcharts.numberFormat(this.value, 0, '.', ',');
//										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
//								        	 color: '#003399' ,
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
//								        	 color: '#f15c80' ,
								        	 connectNulls:false, data: []}
								         ,{name:'FAR', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'TS', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'POFD', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'Hit', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1, // pointInterval: 60 * 5 * 1000, //5 min
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							// PC, POD, FAR, PSS, HSS 값 각각을 scatter yaxis0
							//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1					
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_POD = [];
								eachData_FAR = [];
								eachData_TS = [];
								eachData_POFD = [];
								eachData_VAM_NUM = [];
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_FAR.push([d,parseNumericVal(vrDataObj[i].FAR)]);
									eachData_TS.push([d,parseNumericVal(vrDataObj[i].TS)]);
									eachData_POFD.push([d,parseNumericVal(vrDataObj[i].POFD)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_POD); 
								_chartInstance.series[2].setData(eachData_FAR); 
								_chartInstance.series[3].setData(eachData_TS); 
								_chartInstance.series[4].setData(eachData_POFD); 
								_chartInstance.series[5].setData(eachData_VAM_NUM); 
								_chartInstance.series[6].setData(eachData_HIT); 
								_chartInstance.series[7].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[8].setData(eachData_MISS); 
								_chartInstance.series[9].setData(eachData_COR_NEG); 
							});
							
							map.put(chartId, _chartInstance);
							systime('addChart_L2_TYPE10()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
//=======================================================================================================================================		
//=======================================================================================================================================		
//==== Level 2 Daily Validation End =====================================================================================================
//=======================================================================================================================================		
//=======================================================================================================================================		
					
				
				

		
		
		
		function calcXDaysAgo(currDate, period){
			var dateCalculated = currDate;
			
	 		if(period.toUpperCase()=='DAILY'){
//	 			do nothing
			}else if(period.toUpperCase()=='WEEKLY'){
				dateCalculated = new Date(dateCalculated).add(-7).day(); //date.js
			}else if(period.toUpperCase()=='MONTHLY'){
				dateCalculated = new Date(dateCalculated).add(-1).month();
			}else if(period.toUpperCase()=='QUARTERLY'){
				dateCalculated = new Date(dateCalculated).add(-3).month();
			}else if(period.toUpperCase()=='BIANNUALLY'){
				dateCalculated = new Date(dateCalculated).add(-6).month();
			}
			return dateCalculated;
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
		
		
		