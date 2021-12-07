<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Title -->
  <title>칼로리사전(음식)</title>
  <!-- Required Meta Tags Always Come First -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("button").on("click", function() {
		let keyword = document.querySelector("#keyword");
		
		let state=true;
		if(keyword.value ===null || keyword.value ===""){
			alert("검색어를 입력해주세요");
			keyword.focus();
			state=false;
			return false; 
		}
		$("#keyword2").val(keyword);
		if(state)$("#searchSubmit").submit();//전
	});
});
</script>
  <!-- 페이징 css -->
  <style type="text/css">
  	.pagination-container {
		margin: 100px auto;
		text-align: center;
	}	

	.pagination {
		position: relative;
	}
	
	.pagination a {
		position: relative;
		display: inline-block;
		color: #2c3e50;
		text-decoration: none;
		font-size: 1.2rem;
		padding: 8px 16px 10px;
	}
	
	.pagination a:before {
		z-index: -1;
		position: absolute;
		height: 100%;
		width: 100%;
		content: "";
		top: 0;
		left: 0;
		background-color: #2c3e50;
		border-radius: 24px;
		-webkit-transform: scale(0);
		transform: scale(0);
		transition: all 0.2s;
	}
	
	.pagination a:hover, .pagination a .pagination-active {
		color: #fff;
	}
	
	.pagination a:hover:before, .pagination a .pagination-active:before {
		-webkit-transform: scale(1);
		transform: scale(1);
	}
	
	.pagination .pagination-active {
		color: #fff;
	}
	
	.pagination .pagination-active:before {
		-webkit-transform: scale(1);
		transform: scale(1);
	}
	
	.pagination-newer {
		margin-right: 50px;
	}
	
	.pagination-older {
		margin-left: 50px;
	}
	
	table tr td{
		width: 10%;
	}
	
	table tr th{
		width: 10%;
	}
  </style>
</head>

<body>
  <main>
    <!-- Breadcrumbs -->
    <section class="g-bg-gray-light-v5 g-py-50">
      <div class="container text-center">
        <h2 class="h2 g-color-black g-font-weight-600">칼로리 사전 - 음식칼로리</h2>
		<div class="container text-center g-py-50--mdg-py-80 ">
        
        <!-- Search Form -->
        <form class="g-width-60x--md mx-auto" id="searchSubmit" action="${pageContext.request.contextPath}/selectFoodName" method="post">
          <div class="form-group g-mb-20">
            <div class="input-group u-shadow-v21 rounded g-mb-15">
              
              <c:choose>
                <c:when test="${status==true}">
                  <input id="keyword" name="keyword" value="${keyword }" class="form-control form-control-md g-brd-white g-font-size-16 border-right-0 pr-0 g-py-15" type="text" placeholder="음식명 검색">
                </c:when>
                <c:otherwise>
                  <input id="keyword" name="keyword" class="form-control form-control-md g-brd-white g-font-size-16 border-right-0 pr-0 g-py-15" type="text" placeholder="음식명 검색">
                </c:otherwise>
              </c:choose>
              
              <div class="input-group-addon d-flex align-items-center g-bg-white g-brd-white g-color-gray-light-v1 g-pa-2">
                <button class="btn u-btn-primary g-font-size-16 g-py-15 g-px-20" type="button">
                  <i class="icon-magnifier g-pos-rel g-top-1"></i>
                </button>
              </div>
            </div>
          </div>
        </form>
        <div id="result"></div>
        </div>
      </div>
    </section>
    <!-- End Breadcrumbs -->

	<!-- 게시물 리스트 start -->
	<c:choose>
	  <c:when test="${empty requestScope.pageList.content}">
        <p align="center"><b><span style="font-size:9pt;">등록된 게시물이 없습니다.</span></b></p>
      </c:when>
    
    <c:otherwise>
    <!-- Blog Minimal Blocks -->
      <div class="container g-pt-100 g-pb-20">
        <div>
        <!-- Blog Minimal Blocks -->
          <table style="width: 100%">
            <tr class=" g-brd-y g-brd-gray-light-v3 g-font-size-16 g-py-13 mb-0">
              <th class=" g-color-gray-dark-v4" style="width: 5%">번호</th>
              <th class=" g-color-gray-dark-v4" style="width: 12%">음식명</th>
              <th class=" g-color-gray-dark-v4" style="width: 13%">제조사</th>
              <th class=" g-color-gray-dark-v4">1회제공량(g)</th>
              <th class=" g-color-gray-dark-v4">총 칼로리(kcal)</th>
              <th class=" g-color-gray-dark-v4">단백질(g)</th>
              <th class=" g-color-gray-dark-v4">지방(g)</th>
              <th class=" g-color-gray-dark-v4">탄수화물(g)</th>
              <th class=" g-color-gray-dark-v4">총당류(g)</th>
              <th class=" g-color-gray-dark-v4">나트륨(mg)</th>
            </tr>
            <c:forEach items="${requestScope.pageList.content}" var="food">
              <tr class=" g-brd-y g-brd-gray-light-v3 g-font-size-15 g-py-13 mb-0">
                <td class=" g-color-gray-dark-v4" style="width: 5%">${food.foodNo }</td>
                <td class=" g-color-gray-dark-v4" style="width: 12%">${food.foodName }</td>
                <td class=" g-color-gray-dark-v4" style="width: 13%">${food.regionManufac }</td>
                <td class=" g-color-gray-dark-v4">${food.foodQuantity }${food.foodUnit }</td>
                <td class=" g-color-gray-dark-v4">${food.foodKcal }</td>
                <td class=" g-color-gray-dark-v4">${food.protein }</td>
                <td class=" g-color-gray-dark-v4">${food.fat }</td>
                <td class=" g-color-gray-dark-v4">${food.carbohydrate }</td>
                <td class=" g-color-gray-dark-v4">${food.sugars }</td>
                <td class=" g-color-gray-dark-v4">${food.na }</td>
              </tr>
            </c:forEach>
          </table>
		</div>
		<c:choose>
		<c:when test="${status==true}">
		
		<nav class="g-mb-100" aria-label="Page Navigation">
          <ul class="list-inline mb-0 text-center">
            <c:set var="doneLoop" value="false"/>
            <c:if test="${(startPage-blockCount) > 0}"> <!-- (-2) > 0  -->
            <li class="list-inline-item">
              <a class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15" href="${pageContext.request.contextPath}/selectFoodName?nowPage=${startPage-1}&keyword=${keyword}" aria-label="Next">
                <span aria-hidden="true">
                  <i class="fa fa-angle-left"></i>
                </span>
                <span class="sr-only">Next</span>
              </a>
            </li>
		    </c:if>
            <c:forEach var='i' begin='${startPage}' end='${(startPage-1)+blockCount}'> 
			  <c:if test="${(i-1)>=pageList.getTotalPages()}">
			  <c:set var="doneLoop" value="true"/>
			</c:if>
			<c:if test="${not doneLoop}" >
			  <li class="list-inline-item hidden-down">
			    <a class="${i==nowPage?'active u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--active g-color-white g-bg-primary--active g-font-size-12 rounded-circle g-pa-5':'u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5'}" href="${pageContext.request.contextPath}/selectFoodName?keyword=${keyword}&nowPage=${i}">${i}</a> 
		      </li>
		    </c:if>
            </c:forEach>
            
            <c:if test="${(startPage+blockCount)<=pageList.getTotalPages()}">
            <li class="list-inline-item">
              <a class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15" href="${pageContext.request.contextPath}/selectFoodName?keyword=${keyword}&nowPage=${startPage+blockCount}" aria-label="Next">
                <span aria-hidden="true">
                  <i class="fa fa-angle-right"></i>
                </span>
                <span class="sr-only">Next</span>
              </a>
            </li>
			</c:if>
          </ul>
        </nav>
		
		
		</c:when>
	  <c:otherwise>
		<nav class="g-mb-100" aria-label="Page Navigation">
          <ul class="list-inline mb-0 text-center">
            <c:set var="doneLoop" value="false"/>
            <c:if test="${(startPage-blockCount) > 0}"> <!-- (-2) > 0  -->
            <li class="list-inline-item">
              <a class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15" href="${pageContext.request.contextPath}/foodCal?nowPage=${startPage-1}" aria-label="Next">
                <span aria-hidden="true">
                  <i class="fa fa-angle-left"></i>
                </span>
                <span class="sr-only">Next</span>
              </a>
            </li>
		    </c:if>
            <c:forEach var='i' begin='${startPage}' end='${(startPage-1)+blockCount}'> 
			  <c:if test="${(i-1)>=pageList.getTotalPages()}">
			  <c:set var="doneLoop" value="true"/>
			</c:if>
			<c:if test="${not doneLoop}" >
			  <li class="list-inline-item hidden-down">
			    <a class="${i==nowPage?'active u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--active g-color-white g-bg-primary--active g-font-size-12 rounded-circle g-pa-5':'u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5'}" href="${pageContext.request.contextPath}/foodCal?nowPage=${i}">${i}</a> 
		      </li>
		    </c:if>
            </c:forEach>
            
            <c:if test="${(startPage+blockCount)<=pageList.getTotalPages()}">
            <li class="list-inline-item">
              <a class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15" href="${pageContext.request.contextPath}/foodCal?nowPage=${startPage+blockCount}" aria-label="Next">
                <span aria-hidden="true">
                  <i class="fa fa-angle-right"></i>
                </span>
                <span class="sr-only">Next</span>
              </a>
            </li>
			</c:if>
          </ul>
        </nav>
        </c:otherwise>
        </c:choose>
	  </div>        
    </c:otherwise>
    </c:choose>

    <a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
      <i class="hs-icon hs-icon-arrow-top"></i>
    </a>
  </main>

  <div class="u-outer-spaces-helper"></div>


  <!-- JS Global Compulsory -->
  <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/popper.js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/bootstrap.min.js"></script>


  <!-- JS Implementing Plugins -->
  <script src="${pageContext.request.contextPath}/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>

  <!-- JS Unify -->
  <script src="${pageContext.request.contextPath}/assets/js/hs.core.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/components/hs.header.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/helpers/hs.hamburgers.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/components/hs.tabs.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/components/hs.sticky-block.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/components/hs.go-to.js"></script>

  <!-- JS Customization -->
  <script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>

  <!-- JS Plugins Init. -->
  <script>
    $(document).on('ready', function () {
        // initialization of tabs
        $.HSCore.components.HSTabs.init('[role="tablist"]');

        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');
      });

      $(window).on('load', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of HSMegaMenu component
        $('.js-mega-menu').HSMegaMenu({
          event: 'hover',
          pageContainer: $('.container'),
          breakpoint: 991
        });

        // initialization of sticky blocks
        setTimeout(function() {
          $.HSCore.components.HSStickyBlock.init('.js-sticky-block');
        }, 300);
      });

      $(window).on('resize', function () {
        setTimeout(function () {
          $.HSCore.components.HSTabs.init('[role="tablist"]');
        }, 200);
      });
  </script>
</body>
</html>