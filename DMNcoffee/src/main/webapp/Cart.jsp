<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<style>
* {margin:0;padding:0;box-sizing:border-box;}
		ul, li {list-style:none;}
		
		
		.slidebox {max-width:510px;margin:0 auto;position:relative; border: 1px solid; border-radius:10px; width: 330px; height: 200px; margin-top: 700px; margin-left: 700px; float: left; display: flex;}
		.slidebox .slidelist {position:relative;white-space:nowrap;font-size:0;overflow:hidden;}
		.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;width:50%;transition:all 1s;}
		.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
		.slidebox .slidelist .slideitem > a img {max-width:100%;}
		
		.slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:90%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
		.slidebox .slide-control [class*="control"] label.prev {left:0px; background:#333 url('image/utility/left-arrow.png') center center / 50% no-repeat;}
		.slidebox .slide-control [class*="control"] label.next {right:0px; background:#333 url('image/utility/right-arrow.png') center center / 50% no-repeat;}
		
		[name="slide"] {display:none;}
		#slide01:checked ~ .slidelist .slideitem {left:0;}
		#slide02:checked ~ .slidelist .slideitem {left:-75%;}
		#slide03:checked ~ .slidelist .slideitem {left:-150%;}
		#slide04:checked ~ .slidelist .slideitem {left:-225%;}
		
		.slide-control [class*="control"] {display:none;}
		#slide01:checked ~ .slide-control .control01 {display:block;}
		#slide02:checked ~ .slide-control .control02 {display:block;}
		#slide03:checked ~ .slide-control .control03 {display:block;}
		#slide04:checked ~ .slide-control .control04 {display:block;}
	
</style>
<input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<ul class="slidelist">
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				
			</ul>
			<div class="slide-control">
				<div class="control01">
					<label for="slide04" class="prev"></label>
					<label for="slide02" class="next"></label>
				</div>
				<div class="control02">
					<label for="slide01" class="prev"></label>
					<label for="slide03" class="next"></label>
				</div>
				<div class="control03">
					<label for="slide02" class="prev"></label>
					<label for="slide04" class="next"></label>
				</div>
				<div class="control04">
					<label for="slide03" class="prev"></label>
					<label for="slide01" class="next"></label>
				</div>
			</div> 