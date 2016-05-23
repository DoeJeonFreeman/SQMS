<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="sidebar-nav nav-pills nav-stacked" id="menu">

	<li class=""><!--doejeon active blue --> 
		<!-- 1. n-s residual -->
		<!-- 1. Visible Radiance -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>N-S Residual</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_VR01_0" disabled="disabled">Condition&nbsp;0
						</label>
					</div>
					
				</div>
			</li>
		</ul>
	</li>

	
	<li class="">
		<!-- 2.  Number of Valid Landmarks -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Number of Valid Landmarks
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_02NVL_0" checked >No. Landmarks
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 3.  Residual Average(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Average (EW/NS)</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_03RA_0"  checked>AVG.
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 4.  Residual Standard Deviation(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Standard Deviation (EW/NS)
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_VR04_0" disabled="disabled" >Condition 0
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 5.  Residual Quadratic Deviation(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Quadratic Deviation (EW/NS)
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;" >
			<li>
				<div class="checkboxes" id="CB_QI2_VR_05">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_VR05_0" disabled="disabled">Condition 0
					</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 6.  Residual Statistics per ROI -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Statistics per ROI
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_06">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_VR06_0" disabled="disabled">Condition&nbsp;0
							</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 7.  IMC Data -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		IMC Data
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_QI2_VR_07">
					<div class="checkbox">
						<label> <input type="checkbox" name="QI2_VR07_0" disabled="disabled">Condition&nbsp;0
							</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	
</ul>