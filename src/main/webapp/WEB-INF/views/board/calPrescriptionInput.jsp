<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#height").on("keyup", function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	$("#weight").on("keyup", function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	$("#target_weight").on("keyup", function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	$("#target_weight_date").on("keyup", function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
});
$('#theForm').submit(function(event){ 
	event.preventDefault(); 
	var isSubmit = false; 
	$.ajax({ 
		url:'[주소]', 
		type:'post', 
		data:$('form').serialize(), 
		dataType:'json', 
		async: false, 
		success:function(data) { 
			var message = data.message; 
			if ( message == 'Success' ) { isSubmit = true; } 
			else { isSubmit = false; } 
		}, 
		error:function(request, status, error) { 
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			isSubmit = false; 
		}
		}
	if ( isSubmit ) this.submit(); 
});

</script>
</head>
<body>
	<!-- Signup -->
    <section class="container g-pt-100 g-pb-20">
      <div class="row justify-content-center">
        <div class="col-lg-5 flex-lg-unordered g-mb-80">
          <div class="g-brd-around g-bg-white rounded g-px-30 g-py-50 mb-4">
            <header class="text-center mb-4">
              <h1 class="h3 g-color-black g-font-weight-400 text-capitalize">칼로리 처방 받기</h1>
            </header>
			
			<hr class="g-brd-gray-light-v3 mb-1">
			
			<p align="right" class="g-color-gray-dark-v2 g-font-weight-500">별표(*)는 필수항목입니다.</p>
            
            <!-- Form -->
            <form class="g-py-15">
            
	          <div class="form-group g-mb-20">
	            <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 성별</label>
	              <select class="js-custom-select u-select-v1 g-brd-gray-light-v3 g-color-gray-dark-v5 rounded g-py-12" style="width: 100%;" data-placeholder="Gender" data-open-icon="fa fa-angle-down" data-close-icon="fa fa-angle-up">
	                <option>선택</option>
	                <option value="First Option">남성</option>
	                <option value="Second Option">여성</option>
	              </select>
	          </div>
              
              <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 연령</label>
              <div class="row">
     			  
     			  <div class="col-sm-6 g-mb-20"><!-- 년 -->
                    <select id="select_year" onchange="javascript:lastday();" class="js-custom-select u-select-v1 g-brd-gray-light-v3 g-color-gray-dark-v5 rounded g-py-12" style="width: 100%;" data-open-icon="fa fa-angle-down" data-close-icon="fa fa-angle-up"></select>
                  </div>
                  <div class="col g-mb-20"><!-- 월 -->
                    <select id="select_month" onchange="javascript:lastday();" class="js-custom-select u-select-v1 g-brd-gray-light-v3 g-color-gray-dark-v5 rounded g-py-12" style="width: 100%;" data-open-icon="fa fa-angle-down" data-close-icon="fa fa-angle-up"></select>
                  </div>
                  <div class="col g-mb-20"><!-- 일 -->
                    <select id="select_day" class="js-custom-select u-select-v1 g-brd-gray-light-v3 g-color-gray-dark-v5 rounded g-py-12" style="width: 100%;" data-placeholder="Month" data-open-icon="fa fa-angle-down" data-close-icon="fa fa-angle-up"></select>
                  </div>
              </div>
              
              <div class="g-mb-20">
                <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 키</label>
                <input id="height" class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" placeholder="키 입력">
              </div>
				
			  <div class="g-mb-20">
			    <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 몸무게</label>
                <input id="weight" class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" placeholder="몸무게 입력">
              </div>

			  <div class="g-mb-20">
			    <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 목표 몸무게</label>
                <input id="target_weight" class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" placeholder="목표몸무게 입력">
              </div>

			  <div class="g-mb-20">
			    <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 체중감량 기간</label>
                <input id="target_weight_date" class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" placeholder="체중감량 개월">
              </div>
              
              <div class="form-group g-mb-20">
	            <label class="g-color-gray-dark-v2 g-font-weight-600 g-font-size-14">* 평소 활동량</label>
	              <select class="js-custom-select u-select-v1 g-brd-gray-light-v3 g-color-gray-dark-v5 rounded g-py-12" style="width: 100%;" data-placeholder="Gender" data-open-icon="fa fa-angle-down" data-close-icon="fa fa-angle-up">
	                <option>선택</option>
	                <option value="Option1">활동안함 (운동을 전혀 안 해요.)</option><br>
	                <option value="Option2">가벼운 활동 (평소 가벼운 운동이나 스포츠를 즐겨요)</option>
	                <option value="Option3">보통 활동 (평소 적당한 운동이나 스포츠를 즐겨요.)</option>
	                <option value="Option4">많은 활동 (평소 강렬한 운동이나 스포츠를 즐겨요.)</option>
	                <option value="Option5">격심한 활동 (평소 매우 심한 운동을 하거나 육체를 쓰는 직업이예요.)</option>
	              </select>
	          </div>
              
			  <hr class="g-brd-gray-light-v3 mb-3">

              <button class="btn btn-block u-btn-primary rounded g-py-13" type="button">확인</button>
            </form><!-- End Form -->
          </div>
        </div>
      </div>
    </section><!-- End Signup -->

    <script>
    var start_year="1970";// 시작할 년도 
    var today = new Date(); 
    var today_year= today.getFullYear(); 
    var index=0; 
    for(var y=today_year; y>=start_year; y--){ //start_year ~ 현재 년도 
    	document.getElementById('select_year').options[index] = new Option(y, y); 
    	index++; 
    } 
    index=0; 
    for(var m=1; m<=12; m++){ 
    	document.getElementById('select_month').options[index] = new Option(m, m); index++; 
    } 

    lastday();

      function lastday(){
    	  var Year=document.getElementById('select_year').value;
    	  var Month=document.getElementById('select_month').value;
    	  var day=new Date(new Date(Year,Month,1)-86400000).getDate();
    	  /* = new Date(new Date(Year,Month,0)).getDate(); */
    	  var dayindex_len=document.getElementById('select_day').length;
    	  if(day>dayindex_len){ 
    		  for(var i=(dayindex_len+1); i<=day; i++){ 
    		  	document.getElementById('select_day').options[i-1] = new Option(i, i);
    		  } 
    	  } else if(day<dayindex_len){ 
    		  for(var i=dayindex_len; i>=day; i--){ 
    			  document.getElementById('select_day').options[i]=null; 
    		  } 
    	  }
      }
    </script>
</body>
</html>