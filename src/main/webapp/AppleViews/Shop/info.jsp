<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="info">
				<div class="date_title">
					<dl>
						<dt>스타벅스(이대)</dt>
					</dl>
				</div>
				<div class="detail_content">
					<ul class="place_detail">
						<li><b>주소</b> <span>서울특별시 서대문구 대현동 성실건축</span></li>
						<li><b>전화번호</b> <span> 02-568-9135 </span></li>
					</ul>
					<div id="map"></div>					
				</div>
				<script type="text/javascript">
				var element = document.getElementById('map');
				var map = new google.maps.Map(element, {
					zoom : 18,
					center : new google.maps.LatLng(37.558656,
							126.945984),
					mapTypeId : google.maps.MapTypeId.ROADMAP
				});
				//마커 생성
				new google.maps.Marker({
					position : new google.maps.LatLng(37.558656,
							126.945984),
					map : map
				});
				</script>
				<div id="dat">
					<p>
						<b>댓글달기</b>
					</p>
					<form class="form-inline">
						<div class="form-group">
							<label for="exampleInputName2">이름</label> <input type="text"
								class="form-control" id="exampleInputName2">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail2">비밀번호</label> <input
								type="password" class="form-control" id="exampleInputEmail2">
						</div>
<!-- 						Single button -->
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false">
								★ <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">★★</a></li>
								<li><a href="">★★★</a></li>
								<li><a href="">★★★★</a></li>
								<li><a href="">★★★★★</a></li>
							</ul>
						</div>
					</form>
					<textarea cols="60" id="comment" name="comment" fw-filter="isFill"
						fw-label="댓글내용" fw-msg="" placeholder="내용을 입력하세요"></textarea>
					<button type="submit" class="btn btn-default">확인</button>
										
				</div>
			</div>
		