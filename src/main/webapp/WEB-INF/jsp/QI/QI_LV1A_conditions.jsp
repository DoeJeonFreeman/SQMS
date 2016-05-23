<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="sidebar-nav nav-pills nav-stacked" id="menu">

	<li class=""><!--doejeon active blue --> 
	
		<!-- 1. Visible SNR -->
		<!-- 1. Visible SNR -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span> Visible SNR</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_VR_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_0" checked>Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_1">Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_5">Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR01_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>


	<!-- 2. Visible Radiance -->
	<!-- 2. Visible Radiance -->
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span> Visible Radiance</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_VR_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_0"  checked>Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_1">Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_5">Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR02_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 3. Visible PRNU -->
	<!-- 3. Visible PRNU -->
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Visible PRNU</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_VR_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_0" checked>Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_1" >Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_5">Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_VR03_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 4.IR Radiance (Statistics)-->
	<!-- 4.IR Radiance (Statistics)-->
	<li><a href="#"> <span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR Radiance</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_IR_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR01_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR01_1"  checked>Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 5. IR NEDT -->	
	<!-- 5. IR NEDT -->	
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR NEDT</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_IR_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR02_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR02_1" checked >Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 6. IR PRNU -->	
	<!-- 6. IR PRNU -->	
	<li>
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR PRNU</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI0_IR_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR03_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="QI0_IR03_1" checked>Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>



</ul>