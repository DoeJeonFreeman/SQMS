//
//    Main script 2016-04-21
//
"use strict";

/*-------------------------------------------
	Doe Jeon Freeman
---------------------------------------------*/


	/**
	 * 
	 	var map = new Map();
	 	
	 	map.put("keyString", value);
	 	-----------------------
		map.get("keyString");

	 * 
	 * */
//	Map = function(){
//	 this.map = new Object();
//	};   
//	
//	Map.prototype = {   
//	    put : function(key, value){   
//	        this.map[key] = value;
//	    },   
//	    get : function(key){   
//	        return this.map[key];
//	    },
//	    containsKey : function(key){    
//	     return key in this.map;
//	    },
//	    containsValue : function(value){    
//	     for(var prop in this.map){
//	      if(this.map[prop] == value) return true;
//	     }
//	     return false;
//	    },
//	    isEmpty : function(key){    
//	     return (this.size() == 0);
//	    },
//	    clear : function(){   
//	     for(var prop in this.map){
//	      delete this.map[prop];
//	     }
//	    },
//	    remove : function(key){    
//	     delete this.map[key];
//	    },
//	    keys : function(){   
//	        var keys = new Array();   
//	        for(var prop in this.map){   
//	            keys.push(prop);
//	        }   
//	        return keys;
//	    },
//	    values : function(){   
//	     var values = new Array();   
//	        for(var prop in this.map){   
//	         values.push(this.map[prop]);
//	        }   
//	        return values;
//	    },
//	    size : function(){
//	      var count = 0;
//	      for (var prop in this.map) {
//	        count++;
//	      }
//	      return count;
//	    }
//	};





function LoadAjaxContentWrapper(meIdx){
	var meUrl = "";
//	if(meUrl.toLowerCase() =='lelvel 1 a'){
	if(meIdx*1 == 0){
		meUrl = "nmsc/VSNR.html";
	}else if(meIdx*1 == 1){
		meUrl = "nmsc/VSNR_LVL1B.html";
	}else if(meIdx*1 == 2){
		meUrl = "nmsc/VSNR_LVL2.html";
	}
//	console.log(meIdx + ' : ' + meUrl);
	LoadAjaxContent(meUrl);
}


//
//  Function for load content from url and put in $('.ajax-content') block
//
function LoadAjaxContent(url){
	$('.preloader').show();
	$.ajax({
		mimeType: 'text/html; charset=utf-8', // ! Need set mimeType only when run from local file
		url: url,
		//crossDomain: false, //관련에러콘솔에 찍히길래
		type: 'GET',
		success: function(data) {
			$('#ajax-content').html(data);
			$('.preloader').hide();
		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert(errorThrown);
		},
		dataType: "html",
		async: false
	});
}
//
//  Function maked all .box selector is draggable, to disable for concrete element add class .no-drop
//
//function WinMove(){
//	$( "div.row").not('.no-drop').sortable(); //doejeon
//}
function WinMove(){
	$( "div.box").not('.no-drop')
		.draggable({
			revert: true,
			zIndex: 2000,
			cursor: "crosshair",
			handle: '.box-name',
			opacity: 0.8
		})
		.droppable({//change position each other haha
			tolerance: 'pointer',
			drop: function( event, ui ) {
				var draggable = ui.draggable;
				var droppable = $(this);
				var dragPos = draggable.position();
				var dropPos = droppable.position();
				draggable.swap(droppable);
				setTimeout(function() {
					var dropmap = droppable.find('[id^=map-]');
					var dragmap = draggable.find('[id^=map-]');
					if (dragmap.length > 0 || dropmap.length > 0){
						dragmap.resize();
						dropmap.resize();
					}
					else {
						draggable.resize();
						droppable.resize();
					}
				}, 50);
				setTimeout(function() {
					draggable.find('[id^=map-]').resize();
					droppable.find('[id^=map-]').resize();
				}, 250);
			}
		})
//		.sortable() //doejeon
		;
}
//
////doejeon
//function meCombineDroppables(divId){
//	console.log(divId);
//	console.log('combine two or more droppables in div when me drops them on each other haha ');
//	$( "#"+divId).not('.no-drop')
//		.draggable({
//			revert: true,
//			zIndex: 2000,
//			cursor: "crosshair",
//			handle: '.box-name',
//			opacity: 0.8,
//			stop:function(e){
//				console.log('haha STOP!!!');
////				$(this).remove();
//			}
//		}).droppable({
//		drop: function( event, ui ) {
//			$(this).remove();
//		}
//	})
//	;
////		.sortable() //doejeon
//}


//
// Swap 2 elements on page. Used by WinMove function
//
jQuery.fn.swap = function(b){
	b = jQuery(b)[0];
	var a = this[0];
	var t = a.parentNode.insertBefore(document.createTextNode(''), a);
	b.parentNode.insertBefore(a, b);
	t.parentNode.insertBefore(b, t);
	t.parentNode.removeChild(t);
	return this;
};

//
//  Function for create 2 dates in human-readable format (with leading zero)
//
function PrettyDates(){
	var currDate = new Date();
	var year = currDate.getFullYear();
	var month = currDate.getMonth() + 1;
	var startmonth = 1;
	if (month > 3){
		startmonth = month -2;
	}
	if (startmonth <=9){
		startmonth = '0'+startmonth;
	}
	if (month <= 9) {
		month = '0'+month;
	}
	var day= currDate.getDate();
	if (day <= 9) {
		day = '0'+day;
	}
	var startdate = year +'-'+ startmonth +'-01';
	var enddate = year +'-'+ month +'-'+ day;
	return [startdate, enddate];
}
//
//  Function set min-height of window (required for this theme)
//
function SetMinBlockHeight(elem){
	elem.css('min-height', window.innerHeight - 49)
}
//
//  Helper for correct size of Messages page
//
function MessagesMenuWidth(){
	var W = window.innerWidth;
	var W_menu = $('#sidebar-left').outerWidth();
	var w_messages = (W-W_menu)*16.666666666666664/100;
	$('#messages-menu').width(w_messages);
}



/*-------------------------------------------
	Function for Calendar page (calendar.html)
---------------------------------------------*/
//
// Example form validator function
//
function DrawCalendar(){
	/* initialize the external events
	-----------------------------------------------------------------*/
	$('#external-events div.external-event').each(function() {
		// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
		var eventObject = {
			title: $.trim($(this).text()) // use the element's text as the event title
		};
		// store the Event Object in the DOM element so we can get to it later
		$(this).data('eventObject', eventObject);
		// make the event draggable using jQuery UI
		$(this).draggable({
			zIndex: 999,
			revert: true,      // will cause the event to go back to its
			revertDuration: 0  //  original position after the drag
		});
	});
	/* initialize the calendar
	-----------------------------------------------------------------*/
	var calendar = $('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
			var form = $('<form id="event_form">'+
				'<div class="form-group has-success has-feedback">'+
				'<label">Event name</label>'+
				'<div>'+
				'<input type="text" id="newevent_name" class="form-control" placeholder="Name of event">'+
				'</div>'+
				'<label>Description</label>'+
				'<div>'+
				'<textarea rows="3" id="newevent_desc" class="form-control" placeholder="Description"></textarea>'+
				'</div>'+
				'</div>'+
				'</form>');
			var buttons = $('<button id="event_cancel" type="cancel" class="btn btn-default btn-label-left">'+
							'<span><i class="fa fa-clock-o txt-danger"></i></span>'+
							'Cancel'+
							'</button>'+
							'<button type="submit" id="event_submit" class="btn btn-primary btn-label-left pull-right">'+
							'<span><i class="fa fa-clock-o"></i></span>'+
							'Add'+
							'</button>');
			OpenModalBox('Add event', form, buttons);
			$('#event_cancel').on('click', function(){
				CloseModalBox();
			});
			$('#event_submit').on('click', function(){
				var new_event_name = $('#newevent_name').val();
				if (new_event_name != ''){
					calendar.fullCalendar('renderEvent',
						{
							title: new_event_name,
							description: $('#newevent_desc').val(),
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
				CloseModalBox();
			});
			calendar.fullCalendar('unselect');
		},
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date, allDay) { // this function is called when something is dropped
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = allDay;
			// render the event on the calendar
			// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
			$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
			// is the "remove after drop" checkbox checked?
			if ($('#drop-remove').is(':checked')) {
				// if so, remove the element from the "Draggable Events" list
				$(this).remove();
			}
		},
		eventRender: function (event, element, icon) {
			if (event.description != "") {
				element.attr('title', event.description);
			}
		},
		eventClick: function(calEvent, jsEvent, view) {
			var form = $('<form id="event_form">'+
				'<div class="form-group has-success has-feedback">'+
				'<label">Event name</label>'+
				'<div>'+
				'<input type="text" id="newevent_name" value="'+ calEvent.title +'" class="form-control" placeholder="Name of event">'+
				'</div>'+
				'<label>Description</label>'+
				'<div>'+
				'<textarea rows="3" id="newevent_desc" class="form-control" placeholder="Description">'+ calEvent.description +'</textarea>'+
				'</div>'+
				'</div>'+
				'</form>');
			var buttons = $('<button id="event_cancel" type="cancel" class="btn btn-default btn-label-left">'+
							'<span><i class="fa fa-clock-o txt-danger"></i></span>'+
							'Cancel'+
							'</button>'+
							'<button id="event_delete" type="cancel" class="btn btn-danger btn-label-left">'+
							'<span><i class="fa fa-clock-o txt-danger"></i></span>'+
							'Delete'+
							'</button>'+
							'<button type="submit" id="event_change" class="btn btn-primary btn-label-left pull-right">'+
							'<span><i class="fa fa-clock-o"></i></span>'+
							'Save changes'+
							'</button>');
			OpenModalBox('Change event', form, buttons);
			$('#event_cancel').on('click', function(){
				CloseModalBox();
			});
			$('#event_delete').on('click', function(){
				calendar.fullCalendar('removeEvents' , function(ev){
					return (ev._id == calEvent._id);
				});
				CloseModalBox();
			});
			$('#event_change').on('click', function(){
				calEvent.title = $('#newevent_name').val();
				calEvent.description = $('#newevent_desc').val();
				calendar.fullCalendar('updateEvent', calEvent);
				CloseModalBox()
			});
		}
		});
		$('#new-event-add').on('click', function(event){
			event.preventDefault();
			var event_name = $('#new-event-title').val();
			var event_description = $('#new-event-desc').val();
			if (event_name != ''){
			var event_template = $('<div class="external-event" data-description="'+event_description+'">'+event_name+'</div>');
			$('#events-templates-header').after(event_template);
			var eventObject = {
				title: event_name,
				description: event_description
			};
			// store the Event Object in the DOM element so we can get to it later
			event_template.data('eventObject', eventObject);
			event_template.draggable({
				zIndex: 999,
				revert: true,
				revertDuration: 0
			});
			}
		});
}
//
// Load scripts and draw Calendar
//
function DrawFullCalendar(){
	LoadCalendarScript(DrawCalendar);
}






function toggleFullScreen() {
	  if ((document.fullScreenElement && document.fullScreenElement !== null) ||    
	   (!document.mozFullScreen && !document.webkitIsFullScreen)) {
	    if (document.documentElement.requestFullScreen) {  
	      document.documentElement.requestFullScreen();  
	    } else if (document.documentElement.mozRequestFullScreen) {  
	      document.documentElement.mozRequestFullScreen();  
	    } else if (document.documentElement.webkitRequestFullScreen) {  
	      document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);  
	    }  
	  } else {  
	    if (document.cancelFullScreen) {  
	      document.cancelFullScreen();  
	    } else if (document.mozCancelFullScreen) {  
	      document.mozCancelFullScreen();  
	    } else if (document.webkitCancelFullScreen) {  
	      document.webkitCancelFullScreen();  
	    }  
	  }  
	}

	
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
//
//      MAIN DOCUMENT READY SCRIPT 
//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////

$(document).ready(function () {//doejeon
/*	$('body').on('click', '.show-sidebar', function (e) {
		e.preventDefault();
		$('div#main').toggleClass('sidebar-show');
		setTimeout(MessagesMenuWidth, 250);
	});
	var ajax_url = location.hash.replace(/^#/, '');
	if (ajax_url.length < 1) {
		ajax_url = 'nmsc/QI_alternatives/VSNR.html';
	}
	LoadAjaxContent(ajax_url);//
	$('.main-menu').on('click', 'a', function (e) {
		var parents = $(this).parents('li');
		var li = $(this).closest('li.dropdown');
		var another_items = $('.main-menu li').not(parents);
		another_items.find('a').removeClass('active');
		another_items.find('a').removeClass('active-parent');
		if ($(this).hasClass('dropdown-toggle') || $(this).closest('li').find('ul').length == 0) {
			$(this).addClass('active-parent');
			var current = $(this).next();
			if (current.is(':visible')) {
				li.find("ul.dropdown-menu").slideUp('fast');
				li.find("ul.dropdown-menu a").removeClass('active')
			}
			else {
				another_items.find("ul.dropdown-menu").slideUp('fast');
				current.slideDown('fast');
			}
		}
		else {
			if (li.find('a.dropdown-toggle').hasClass('active-parent')) {
				var pre = $(this).closest('ul.dropdown-menu');
				pre.find("li.dropdown").not($(this).closest('li')).find('ul.dropdown-menu').slideUp('fast');
			}
		}
		if ($(this).hasClass('active') == false) {
			$(this).parents("ul.dropdown-menu").find('a').removeClass('active');
			$(this).addClass('active')
		}
		if ($(this).hasClass('ajax-link')) {
			e.preventDefault();
			if ($(this).hasClass('add-full')) {
				$('#content').addClass('full-content');
			}
			else {
				$('#content').removeClass('full-content');
			}
			var url = $(this).attr('href');
			window.location.hash = url;
			LoadAjaxContent(url);
		}
		if ($(this).attr('href') == '#') {
			e.preventDefault();
		}
	});
	var height = window.innerHeight - 49;
	$('[id^=TSCWrapper]').css('min-height', height)
		.on('click', '.expand-link', function (e) {
			var body = $('body');
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			button.toggleClass('fa-expand').toggleClass('fa-compress');
			box.toggleClass('expanded');
			body.toggleClass('body-expanded');
			var timeout = 0;
			if (body.hasClass('body-expanded')) {
				timeout = 100;
			}
			setTimeout(function () {
				box.toggleClass('expanded-padding');
			}, timeout);
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, timeout + 50);
		})
		.on('click', '.collapse-link', function (e) {
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			var content = box.find('div.box-content');
			content.slideToggle('fast');
			button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, 50);
		})
		.on('click', '.close-link', function (e) {
			e.preventDefault();
			var content = $(this).closest('div.box');
			content.remove();
		});
	$('body').on('click', 'a.close-link', function(e){
		e.preventDefault();
		CloseModalBox();
	});
	$('#top-panel').on('click','a', function(e){
		if ($(this).hasClass('ajax-link')) {
			e.preventDefault();
			if ($(this).hasClass('add-full')) {
				$('#content').addClass('full-content');
			}
			else {
				$('#content').removeClass('full-content');
			}
			var url = $(this).attr('href');
			window.location.hash = url;
			LoadAjaxContent(url);
		}
	});*/
	
	
	var height = window.innerHeight - 49;
	$('[id^=TSCWrapper]').css('min-height', height)
		.on('click', '.collapse-link', function (e) {
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			var content = box.find('div.box-content');
			content.slideToggle('fast');
			button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, 50);
	});
	
	/**
	 * checkBox.name == meDraggableItem.id
	 * */
	$('[id^=TSCWrapper]').on('click', '.close-window', function (e) {
		e.preventDefault();
		var cbName = $(this).closest('div.meDraggableItem').attr('id');
		$("input[name='" + cbName + "']").prop('checked',false); //	or .removeAttr('checked');
		$('#'+cbName).remove();
		map.remove( 'ts_'+cbName);
	});
	
	
	
	$('.meControllPanel').on('click', '.meExpandable', function (e) {
		e.preventDefault();
		var button = $(this).find('i');
		button.toggleClass('fa-arrows-alt').toggleClass('fa-compress');
	});
	
	
	
	
	
	//<a href="#" data-toggle="modal" data-target="#chart-modal" class="chart-modal"><i class="fa fa-bar-chart-o modal-icon"></i></a>
	$('[id^=TSCWrapper]').on('click', '.mePopupWindow', function (e) {
		e.preventDefault();
/*		
//		($(this).closest('div.meDraggableItem')).clone().appendTo('#container'); //it works
		//$('#'+highchartWrapper).appendTo('#container'); //it works
*/		
		var highchartWrapper = $(this).closest('div.meDraggableItem').attr('id');
		var box = $(this).closest('div.box');
		var source = box.find('div.classySnob');
//console.log(source.highcharts());
        $('#'+highchartWrapper).toggleClass('modal1');
//      $('#ts_'+highchartWrapper+'.highcharts-container', source).highcharts().reflow();
//      $('#ts_'+highchartWrapper, source).highcharts().reflow();
        source.highcharts().reflow();
	});
	
	
	
	$(function () {
		/*
	    $('#container').highcharts({
	        chart: {
	            type: 'column'        
	        },
	        title: {
	            text: 'Stacked column chart'
	        },
	        xAxis: {
	            categories: ['Lazada', 'Competitor 1', 'Competitor 2', 'Competitor 3', 'Competitor 4']
	        },
	        yAxis: {
	            min: 0,
	            title: {
	                text: 'Price Range'
	            }
	        },
	        tooltip: {
	            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
	            shared: true
	        },
	        plotOptions: {
	            column: {
	                stacking: 'percent'
	            }
	        },
	        series: [{
	            name: '100 - 300',
	            data: [5, 3, 4, 7, 2]
	        }, {
	            name: '301 - 500',
	            data: [2, 2, 3, 2, 1]
	        }, {
	            name: '501 - 1000',
	            data: [3, 4, 4, 2, 5]
	        }, {
	            name: '1001 - 3000',
	            data: [3, 4, 4, 2, 5]
	        }, {
	            name: '3001 - 5000',
	            data: [3, 4, 4, 2, 5]
	        }, {
	            name: '5001 - 10000',
	            data: [3, 4, 4, 2, 5]
	        }]
	    });
	    
	    */
	  /*  var chart = $('#container').highcharts();
	    $('#chart-modal').on('show.bs.modal', function() {
	        $('#container').css('visibility', 'hidden');
	    });
	    $('#chart-modal').on('shown.bs.modal', function() {
	        $('#container').css('visibility', 'initial');
	        chart.reflow();
	    });   */
	});

	
	
	
	
});




