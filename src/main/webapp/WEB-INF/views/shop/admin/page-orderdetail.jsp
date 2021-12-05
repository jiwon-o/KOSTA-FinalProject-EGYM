<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Title -->

  </head>

  <body>
    <main>
      <!-- Header -->
	  

      <!-- Breadcrumbs -->
      <section class="g-brd-bottom g-brd-gray-light-v4 g-py-30">
        <div class="container">
          <div class="d-sm-flex text-center">
            <div class="align-self-center">
              <h1 class="h3 mb-0"><b>판매 정보</b></h1>
            </div>

            <div class="align-self-center ml-auto">
              <ul class="u-list-inline">
                <li class="list-inline-item g-mr-5">
                  <a class="u-link-v5 g-color-text" href="${pageContext.request.contextPath}/html/namdo-market/home-page.jsp">요거 묵어봤는감?</a>
                  <i class="g-color-gray-light-v2 g-ml-5 fa fa-angle-right"></i>
                </li>
                <li class="list-inline-item g-color-primary">
                  <span>판매 정보</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      <!-- End Breadcrumbs -->

      <div class="container g-pt-70 g-pb-30">
        <div class="row justify-content-center">
          <!-- Profile Settings -->
          
          <!-- End Profile Settings -->


          <!-- Products -->
          <div class="col-lg-9 g-mb-50">

			
            <!-- Links -->
            <ul class="list-inline g-brd-bottom--sm g-brd-gray-light-v3 mb-5">
              <li class="list-inline-item g-pb-10 g-pr-10 g-mb-20 g-mb-0--sm">
                <a class="g-brd-bottom g-brd-2 g-brd-primary g-color-main g-color-black g-font-weight-600 g-text-underline--none--hover g-px-10 g-pb-13" href="#">판매 목록</a>
              </li>
            </ul>
            
            <!-- End Links -->
			<c:choose>
				<c:when test="${empty requestScope.list}">
					<div id="accordion-12-1-heading-01" class="u-accordion__header g-color-gray-dark-v4 g-font-weight-500 g-font-size-16 g-pa-0" role="tab">
                         판매된 내역이 없습니다.
            		</div>
				</c:when>

				<c:otherwise>
				
				<div class="mb-5">
              		<h3 class="h6 d-inline-block">주문 상세 내역 : ${list.size()}개</h3>
            	</div>
            	
				<c:forEach items="${requestScope.list}" var="orderDetail">
			
            	
            	<!-- Product Block -->
            	<div class="g-brd-around g-brd-gray-light-v4 rounded g-mb-30">
              		<header class="g-bg-gray-light-v5 g-pa-5">
                		<div class="row">
                  		
                  		<div class="col-4 col-sm-3 g-mb-30">
		                        <img class="img-fluid g-width-100 g-height-100 g-pa-2" src="${pageContext.request.contextPath}/save/${orderDetail.product.productImageList[0].productImageName}" alt="Image Description">
		                 </div>

                  		<div class="col-sm-3 col-md-2 g-mb-20 g-mb-0--sm">
                    		<h4 class="g-color-gray-dark-v4 g-font-weight-400 g-font-size-12 text-uppercase g-mb-2">상품명</h4>
                    		<span class="g-color-black g-font-weight-300 g-font-size-13">${orderDetail.product.productName} </span>
                  		</div>

                  		
                  		
                  		<div class="col-sm-3 col-md-2 g-mb-20 g-mb-0--sm">
                    		<h4 class="g-color-gray-dark-v4 g-font-weight-400 g-font-size-12 text-uppercase g-mb-2">개수</h4>
                    		<span class="g-color-black g-font-weight-300 g-font-size-13">${orderDetail.productCount} </span>
                  		</div>
						
                  		<div class="col-sm-3 col-md-2 g-mb-20 g-mb-0--sm">
                    		<h4 class="g-color-gray-dark-v4 g-font-weight-400 g-font-size-12 text-uppercase g-mb-2">주문상태</h4>
                    		<span class="g-color-black g-font-weight-300 g-font-size-13">${orderDetail.orderStatus} </span>
                  		</div>						
						
                  		
                		</div>
              		</header>

              		<!-- Product Content -->
              		<div class="g-pa-20">
               		 <div class="row">
                 		 <div class="col-md-8">
           
							<!--  
		                    <div class="row">
		                      <div class="col-4 col-sm-3 g-mb-30">
		                        <img class="img-fluid" src="assets/img-temp/150x150/img9.jpg" alt="Image Description">
		                      </div>
							-->
		
							<!-- 버튼 비활성화 
		                      <div class="col-8 col-sm-9 g-mb-30">
		                        <h4 class="h6 g-font-weight-400"><a href="${pageContext.request.contextPath}/front?key=item&methodName=selectDetail&itemNo=${itemDto.itemNo}">${itemDto.itemName}</a></h4>
		                        <span class="d-block g-color-gray-dark-v4 g-font-size-13 mb-2">판매자 정보: ${itemDTO.sellerNo}</span>
		                        <span class="d-block g-color-lightred mb-2">${itemDto.itemPrice}</span>
		                        <a class="btn g-brd-around g-brd-gray-light-v3 g-color-gray-dark-v3 g-bg-gray-light-v5 g-bg-gray-light-v4--hover g-font-size-12 rounded g-px-18 g-py-7" href="${pageContext.request.contextPath}/front?key=order&methodName=selectOrderDetailByItemNo&itemNo=${itemDto.itemNo}">판매 내역 보기</a>
		                      </div>
		                      -->
		                      
		                     
		                    </div>
	                  </div>
	
					<!--  상품 삭제 (보류) 
	                  <div class="col-md-4">
	                    <a class="btn btn-block g-brd-around g-brd-gray-light-v3 g-color-gray-dark-v3 g-bg-gray-light-v5 g-bg-gray-light-v4--hover g-font-size-12 text-uppercase g-py-12 g-px-25" href="#">상품 삭제하기</a>
	                  </div>
	                 -->
	                </div>
	              </div>
	              <!-- End Product Content -->
            </c:forEach>
            </c:otherwise>
			</c:choose>
			</div>
			<!-- End Product Block -->
			
			</div> 
			</div>
            


            <!-- Pagination -->
            
            <!-- End Pagination -->
          </div>
          <!-- Orders -->
        </div>


		 
      <!-- Footer -->

      <a class="js-go-to u-go-to-v2" href="#"
         data-type="fixed"
         data-position='{
           "bottom": 15,
           "right": 15
         }'
         data-offset-top="400"
         data-compensation="#js-header"
         data-show-effect="zoomIn">
        <i class="hs-icon hs-icon-arrow-top"></i>
      </a>
      
    </main>

    <div class="u-outer-spaces-helper"></div>

    <!-- JS Global Compulsory -->
    <script src="${pageContext.request.contextPath}/html/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/vendor/popper.js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/vendor/bootstrap/bootstrap.min.js"></script>

    <!-- JS Implementing Plugins -->
    <script src="${pageContext.request.contextPath}/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- JS Unify -->
    <script src="${pageContext.request.contextPath}/html/assets/js/hs.core.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/js/components/hs.header.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/js/components/hs.dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/js/components/hs.scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/html/assets/js/components/hs.go-to.js"></script>

    <!-- JS Customization -->
    <script src="${pageContext.request.contextPath}/html/assets/js/custom.js"></script>

    <!-- JS Plugins Init. -->
    <script>
      $(document).on('ready', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of HSMegaMenu component
        $('.js-mega-menu').HSMegaMenu({
          event: 'hover',
          pageContainer: $('.container'),
          breakpoint: 991
        });

        // initialization of HSDropdown component
        $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
          afterOpen: function () {
            $(this).find('input[type="search"]').focus();
          }
        });

        // initialization of HSScrollBar component
        $.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');
      });
    </script>
    <script type="text/javascript">
        document.getElementById("name").innerHTML = "<b>${sessionScope.sellerDTO.sellerName} 님</b>"
    </script>
  </body>
</html>
