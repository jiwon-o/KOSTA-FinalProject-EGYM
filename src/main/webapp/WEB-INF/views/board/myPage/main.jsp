<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Title -->
  <title>Unify Profile | | Unify - Responsive Website Template</title>

  <!-- Required Meta Tags Always Come First -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <!-- Favicon -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
  <!-- Google Fonts -->
  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C500%2C600%2C700%7CPlayfair+Display%7CRoboto%7CRaleway%7CSpectral%7CRubik">
  <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/bootstrap/bootstrap.min.css">
  <!-- CSS Global Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/icon-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/icon-line/css/simple-line-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/icon-etlinefont/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/icon-line-pro/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/icon-hs/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/hs-megamenu/src/hs.megamenu.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/hamburgers/hamburgers.min.css">

  <!-- CSS Unify -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/unify-core.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/unify-components.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/unify-globals.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
</head>

<body>
  <main>

    <!-- Breadcrumb -->
    <section class="g-my-30">
      <div class="container">
        <ul class="u-list-inline">
          <li class="list-inline-item g-mr-7">
            <a class="u-link-v5 g-color-main g-color-primary--hover" href="${pageContext.request.contextPath}/main">Home</a>
            <i class="fa fa-angle-right g-ml-7"></i>
          </li>
          <li class="list-inline-item g-color-primary">
            <span>MyPage</span>
          </li>
        </ul>
      </div>
    </section>
    <!-- End Breadcrumb -->

    <section class="g-mb-100">
      <div class="container">
        <div class="row">
          <!-- Profile Sidebar -->
          <div class="col-lg-3 g-mb-50 g-mb-0--lg">
            <!-- User Image -->
            <div class="u-block-hover g-pos-rel">
              <figure>
                <img class="img-fluid w-100 u-block-hover__main--zoom-v1" src="../../assets/img-temp/400x450/img5.jpg" alt="Image Description">
              </figure>

              <!-- Figure Caption -->
              <figcaption class="u-block-hover__additional--fade g-bg-black-opacity-0_5 g-pa-30">
                <div class="u-block-hover__additional--fade u-block-hover__additional--fade-up g-flex-middle">
                  <!-- Figure Social Icons -->
                  <ul class="list-inline text-center g-flex-middle-item--bottom g-mb-20">
                    <li class="list-inline-item align-middle g-mx-7">
                      <a class="u-icon-v1 u-icon-size--md g-color-white" href="#">
                        <i class="icon-note u-line-icon-pro"></i>
                      </a>
                    </li>
                    <li class="list-inline-item align-middle g-mx-7">
                      <a class="u-icon-v1 u-icon-size--md g-color-white" href="#">
                        <i class="icon-notebook u-line-icon-pro"></i>
                      </a>
                    </li>
                    <li class="list-inline-item align-middle g-mx-7">
                      <a class="u-icon-v1 u-icon-size--md g-color-white" href="#">
                        <i class="icon-settings u-line-icon-pro"></i>
                      </a>
                    </li>
                  </ul>
                  <!-- End Figure Social Icons -->
                </div>
              </figcaption>
              <!-- End Figure Caption -->

              <!-- User Info -->
              <span class="g-pos-abs g-top-20 g-left-0">
                  <a class="btn btn-sm u-btn-primary rounded-0" href="#">등급이름</a>
                  <small class="d-block g-bg-black g-color-white g-pa-5">Project Manager</small>
                </span>
              <!-- End User Info -->
            </div>
            <!-- User Image -->

            <!-- Sidebar Navigation -->
            <div class="list-group list-group-border-0 g-mb-40">
              <!-- 홈 -->
              <a href="${pageContext.request.contextPath}/myPage/" class="list-group-item justify-content-between active">
                <span><i class="icon-home g-pos-rel g-top-1 g-mr-8"></i>나의 페이지</span>
                <span class="u-label g-font-size-11 g-bg-white g-color-main g-rounded-20 g-px-10"></span>
              </a>
              <!-- End 홈 -->

              <!-- 나의 게시물 -->
              <a href="${pageContext.request.contextPath}/myPage/board" class="list-group-item list-group-item-action justify-content-between">
                <span><i class="icon-layers g-pos-rel g-top-1 g-mr-8"></i>나의 게시물</span>
                <span class="u-label g-font-size-11 g-bg-primary g-rounded-20 g-px-10"></span>
              </a>
              <!-- End 나의 게시물 -->

              <!-- 나의 댓글 -->
              <a href="${pageContext.request.contextPath}/myPage/reply" class="list-group-item list-group-item-action justify-content-between">
                <span><i class="icon-bubbles g-pos-rel g-top-1 g-mr-8"></i>나의 댓글</span>
                <span class="u-label g-font-size-11 g-bg-pink g-rounded-20 g-px-8"></span>
              </a>
              <!-- End 나의 댓글 -->
              
              <!-- 정보 수정 -->
              <a href="${pageContext.request.contextPath}/myPage/setting" class="list-group-item list-group-item-action justify-content-between">
                <span><i class="icon-settings g-pos-rel g-top-1 g-mr-8"></i>정보 수정</span>
                <span class="u-label g-font-size-11 g-bg-cyan g-rounded-20 g-px-8"></span>
              </a>
              <!-- End 정보수정 -->
            </div>
            <!-- End Sidebar Navigation -->
          </div>
          <!-- End Profile Sidebar -->

          <!-- Profile Content -->
          <div class="col-lg-9">
            <!-- Overall Statistics -->
            <div class="row g-mb-40">
              <div class="col-md-6 g-mb-30 g-mb-0--md">
                <div class="g-bg-cyan g-color-white g-pa-25">
                  <header class="d-flex text-uppercase g-mb-40">
                    <i class="icon-people align-self-center display-4 g-mr-20"></i>

                    <div class="g-line-height-1">
                      <h4 class="h5">나의 등급</h4>
                      <div class="js-counter g-font-size-30" data-comma-separated="true">52147</div>
                    </div>
                  </header>

                  <div class="d-flex justify-content-between text-uppercase g-mb-25">
                    <div class="g-line-height-1">
                      <h5 class="h6 g-font-weight-600">다음 등급까지 남은 경험치</h5>
                      <div class="js-counter g-font-size-16" data-comma-separated="true">1385</div>
                    </div>
                  </div>

                  <h6 class="g-mb-10">다음 등급까지 <span class="float-right g-ml-10">72%</span></h6>
                  <div class="js-hr-progress-bar progress g-bg-black-opacity-0_1 rounded-0 g-mb-10">
                    <div class="js-hr-progress-bar-indicator progress-bar g-bg-white u-progress-bar--xs" role="progressbar" style="width: 72%;" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <small class="g-font-size-12">다음 등급은...?</small>
                </div>
              </div>

              <div class="col-md-6">
                <div class="g-bg-purple g-color-white g-pa-25">
                  <header class="d-flex text-uppercase g-mb-40">
                    <i class="icon-layers align-self-center display-4 g-mr-20"></i>

                    <div class="g-line-height-1">
                      <h4 class="h5">나의 다짐</h4>
                      <div class="js-counter g-font-size-30" data-comma-separated="true">324056</div>
                    </div>
                  </header>

                  <div class="d-flex justify-content-between text-uppercase g-mb-25">
                    <div class="g-line-height-1">
                      <h5 class="h6 g-font-weight-600">나의 목표는...!!!</h5>
                      <h3>${requestScope.member.memberMessage}</div></h3>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <!-- End Overall Statistics -->

            <!-- Projects & Activities Panels -->
            <div class="row g-mb-40">
              <div class="col-lg-6 g-mb-40 g-mb-0--lg">
                <!-- Latest Projects Panel -->
                <div class="card border-0">
                  <!-- Panel Header -->
                  <div class="card-header d-flex align-items-center justify-content-between g-bg-gray-light-v5 border-0 g-mb-15">
                    <h3 class="h6 mb-0">
                        <i class="icon-layers g-pos-rel g-top-1 g-mr-5"></i> 최근 게시물
                      </h3>             
                  </div>
                  <!-- End Panel Header -->

                  <!-- Panel Body -->

                  <div class="js-scrollbar card-block u-info-v1-1 g-bg-white-gradient-v1--after g-height-400 g-pa-0">
                    <ul class="list-unstyled">
                      <li class="media g-brd-around g-brd-gray-light-v4 g-brd-left-3 g-brd-blue-left rounded g-pa-20 g-mb-10">
                        <div class="d-flex g-mt-2 g-mr-15">
                          <img class="g-width-40 g-height-40 rounded-circle" src="../../assets/img-temp/100x100/img1.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <div class="d-flex justify-content-between">
                            <h5 class="h6 g-font-weight-600 g-color-black">Unify Template</h5>
                            <span class="small text-nowrap g-color-blue">2 min ago</span>
                          </div>
                          <p>Curabitur hendrerit dolor sit amet consectetur. Adipiscing elitut leosit amet, consectetur eleifend.</p>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">HTML</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">AnhularJS</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">PHP</span>
                        </div>
                      </li>

                      <li class="media g-brd-around g-brd-gray-light-v4 g-brd-left-3 g-brd-pink-left rounded g-pa-20 g-mb-10">
                        <div class="d-flex g-mt-2 g-mr-15">
                          <img class="g-width-40 g-height-40 rounded-circle" src="../../assets/img-temp/100x100/img5.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <div class="d-flex justify-content-between">
                            <h5 class="h6 g-font-weight-600 g-color-black">UX/UI Design and Backend</h5>
                            <span class="small text-nowrap g-color-pink">16 min ago</span>
                          </div>
                          <p>Hac consectetur habitasse platea dictumst, adipiscing elitut leosit amet, consectetur eleifend.</p>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">CSS</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-color-black g-rounded-20 g-px-10">JavaScript</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">Ruby</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">ASP.NET</span>
                        </div>
                      </li>

                      <li class="media g-brd-around g-brd-gray-light-v4 g-brd-left-3 g-brd-black-left rounded g-pa-20 g-mb-10">
                        <div class="d-flex g-mt-2 g-mr-15">
                          <img class="g-width-40 g-height-40 rounded-circle" src="../../assets/img-temp/100x100/img4.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <div class="d-flex justify-content-between">
                            <h5 class="h6 g-font-weight-600 g-color-black">React Native App</h5>
                            <span class="small text-nowrap g-color-blue">2 min ago</span>
                          </div>
                          <p>Curabitur hendrerit dolor sit amet consectetur. Adipiscing elitut leosit amet, consectetur eleifend.</p>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">ReactJS</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">CSS</span>
                          <span class="u-label u-label--sm g-bg-gray-light-v4 g-color-main g-rounded-20 g-px-10">HTML</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <!-- End Panel Body -->
                </div>
                <!-- End Latest Projects Panel -->
              </div>

              <div class="col-lg-6">
                <!-- Activities Panel -->
                <div class="card border-0">
                  <div class="card-header d-flex align-items-center justify-content-between g-bg-gray-light-v5 border-0 g-mb-15">
                    <h3 class="h6 mb-0">
                        <i class="icon-directions g-pos-rel g-top-1 g-mr-5"></i> 30일 챌린지
                      </h3>
                    <div class="dropdown g-mb-10 g-mb-0--md">
                      <span class="d-block g-color-primary--hover g-cursor-pointer g-mr-minus-5 g-pa-5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-options-vertical g-pos-rel g-top-1"></i>
                        </span>
                      <div class="dropdown-menu dropdown-menu-right rounded-0 g-mt-10">
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-layers g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Projects
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-wallet g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Wallets
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-fire g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Reports
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-settings g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Users Setting
                        </a>

                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-plus g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> View More
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-height-400 g-pa-0">
                    <ul class="list-unstyled">
                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img17.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">James Coolman</span>
                              <small class="g-font-size-12 g-color-blue">8k+ earned</small>
                            </h5>
                          <p class="m-0">Nulla ipsum dolor sit amet adipiscing</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-blue g-rounded-20 g-px-10">$25 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img5.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">Alberta Watson</span>
                              <small class="g-font-size-12 g-color-pink">5k+ earned</small>
                            </h5>
                          <p class="m-0">Hac consectetur habitasse platea dictumst</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-pink g-rounded-20 g-px-10">$32 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img14.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">David Lee</span>
                              <small class="g-font-size-12 g-color-teal">3k+ earned</small>
                            </h5>
                          <p class="m-0">Curabitur hendrerit dolor sit amet consectetur</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-teal g-rounded-20 g-px-10">$28 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img4.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">Alberta Heller</span>
                              <small class="g-font-size-12 g-color-darkpurple">4k+ earned</small>
                            </h5>
                          <p class="m-0">Adipiscing elitut leosit amet, consectetur eleifend</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-darkpurple g-rounded-20 g-px-10">$35 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img17.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">James Coolman</span>
                              <small class="g-font-size-12 g-color-blue">8k+ earned</small>
                            </h5>
                          <p class="m-0">Nulla ipsum dolor sit amet adipiscing</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-blue g-rounded-20 g-px-10">$25 / hr</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- End Activities Panel -->
              </div>
            </div>
            <!-- End Projects & Activities Panels -->

            <!-- Projects & News Feeds Panels -->
            <div class="row g-mb-40">
              <div class="col-lg-6 g-mb-40 g-mb-0--lg">
                <!-- Notifications Panel -->
                <div class="card border-0">
                  <div class="card-header d-flex align-items-center justify-content-between g-bg-gray-light-v5 border-0 g-mb-15">
                    <h3 class="h6 mb-0">
                        <i class="icon-list g-pos-rel g-top-1 g-mr-5"></i> 최근 댓글
                      </h3>
                    <div class="dropdown g-mb-10 g-mb-0--md">
                      <span class="d-block g-color-primary--hover g-cursor-pointer g-mr-minus-5 g-pa-5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-options-vertical g-pos-rel g-top-1"></i>
                        </span>
                      <div class="dropdown-menu dropdown-menu-right rounded-0 g-mt-10">
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-layers g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Projects
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-wallet g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Wallets
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-fire g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Reports
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-settings g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Users Setting
                        </a>

                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-plus g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> View More
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="js-scrollbar card-block u-info-v1-1 g-bg-white-gradient-v1--after g-height-300 g-pa-0">
                    <!-- Alert Success -->
                    <div class="alert fade show g-bg-primary-opacity-0_1 g-color-primary rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <img class="g-width-40 g-height-40 g-rounded-50x" src="../../assets/img-temp/100x100/img5.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Jasica Coolman</strong> saved your pin.</p>
                          <span class="g-font-size-12 g-color-gray">2 hours ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Success -->

                    <!-- Alert Cyan -->
                    <div class="alert fade show g-bg-cyan-opacity-0_1 g-color-cyan rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <img class="g-width-40 g-height-40 g-rounded-50x" src="../../assets/img-temp/100x100/img14.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Jack Watson</strong> sent you a message.</p>
                          <span class="g-font-size-12">5 minutes ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Cyan -->

                    <!-- Alert Orange -->
                    <div class="alert fade show g-bg-orange-opacity-0_1 g-color-orange rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <img class="g-width-40 g-height-40 g-rounded-50x" src="../../assets/img-temp/100x100/img4.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Nelly</strong> is offering free cofee..</p>
                          <span class="g-font-size-12 g-color-gray">5 days ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Orange -->

                    <!-- Alert Purple -->
                    <div class="alert fade show g-bg-purple-opacity-0_1 g-color-purple rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <span class="u-icon-v3 u-icon-size--sm g-bg-purple g-color-white g-rounded-50x">
                            <i class="icon-wallet"></i>
                          </span>
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Pixeel Ltd</strong> received $270 for logo.</p>
                          <span class="g-font-size-12 g-color-gray">2 hours ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Purple -->

                    <!-- Alert Red -->
                    <div class="alert fade show g-bg-red-opacity-0_1 g-color-lightred rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <img class="g-width-40 g-height-40 g-rounded-50x" src="../../assets/img-temp/100x100/img17.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Edmon Low</strong> saved your pin.</p>
                          <span class="g-font-size-12 g-color-gray">5 minutes ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Red -->

                    <!-- Alert Gray Lighter 5 -->
                    <div class="alert fade show g-bg-gray-light-v5 rounded-0 g-mb-5" role="alert">
                      <button type="button" class="close u-alert-close--light g-ml-10 g-mt-1" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>

                      <div class="media">
                        <div class="d-flex g-mr-10">
                          <img class="g-width-40 g-height-40 g-rounded-50x" src="../../assets/img-temp/100x100/img1.jpg" alt="Image Description">
                        </div>
                        <div class="media-body">
                          <p class="m-0"><strong>Htmlstream</strong> released a new update.</p>
                          <span class="g-font-size-12 g-color-gray">2 hours ago</span>
                        </div>
                      </div>
                    </div>
                    <!-- End Alert Gray Lighter 5 -->
                  </div>
                </div>
                <!-- End Notifications Panel -->
              </div>

              <div class="col-lg-6">
                <!-- Activities Panel -->
                <div class="card border-0">
                  <div class="card-header d-flex align-items-center justify-content-between g-bg-gray-light-v5 border-0 g-mb-15">
                    <h3 class="h6 mb-0">
                        <i class="icon-directions g-pos-rel g-top-1 g-mr-5"></i> 나의 활동 내역
                      </h3>
                    <div class="dropdown g-mb-10 g-mb-0--md">
                      <span class="d-block g-color-primary--hover g-cursor-pointer g-mr-minus-5 g-pa-5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-options-vertical g-pos-rel g-top-1"></i>
                        </span>
                      <div class="dropdown-menu dropdown-menu-right rounded-0 g-mt-10">
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-layers g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Projects
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-wallet g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Wallets
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-fire g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Reports
                        </a>
                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-settings g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> Users Setting
                        </a>

                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item g-px-10" href="#">
                          <i class="icon-plus g-font-size-12 g-color-gray-dark-v5 g-mr-5"></i> View More
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-height-400 g-pa-0">
                    <ul class="list-unstyled">
                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img17.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">James Coolman</span>
                              <small class="g-font-size-12 g-color-blue">8k+ earned</small>
                            </h5>
                          <p class="m-0">Nulla ipsum dolor sit amet adipiscing</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-blue g-rounded-20 g-px-10">$25 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img5.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">Alberta Watson</span>
                              <small class="g-font-size-12 g-color-pink">5k+ earned</small>
                            </h5>
                          <p class="m-0">Hac consectetur habitasse platea dictumst</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-pink g-rounded-20 g-px-10">$32 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img14.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">David Lee</span>
                              <small class="g-font-size-12 g-color-teal">3k+ earned</small>
                            </h5>
                          <p class="m-0">Curabitur hendrerit dolor sit amet consectetur</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-teal g-rounded-20 g-px-10">$28 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img4.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">Alberta Heller</span>
                              <small class="g-font-size-12 g-color-darkpurple">4k+ earned</small>
                            </h5>
                          <p class="m-0">Adipiscing elitut leosit amet, consectetur eleifend</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-darkpurple g-rounded-20 g-px-10">$35 / hr</span>
                        </div>
                      </li>

                      <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                        <div class="g-mt-2">
                          <img class="g-width-50 g-height-50 rounded-circle" src="../../assets/img-temp/100x100/img17.jpg" alt="Image Description">
                        </div>
                        <div class="align-self-center g-px-10">
                          <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                              <span class="g-mr-5">James Coolman</span>
                              <small class="g-font-size-12 g-color-blue">8k+ earned</small>
                            </h5>
                          <p class="m-0">Nulla ipsum dolor sit amet adipiscing</p>
                        </div>
                        <div class="align-self-center ml-auto">
                          <span class="u-label u-label--sm g-bg-blue g-rounded-20 g-px-10">$25 / hr</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- End Activities Panel -->
              </div>
            </div>
            <!-- End Projects & News Feeds Panels -->

           
          <!-- End Profile Content -->
        </div>
      </div>
    </section>
    <a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
      <i class="hs-icon hs-icon-arrow-top"></i>
    </a>
  </main>

  <div class="u-outer-spaces-helper"></div>


  <!-- JS Global Compulsory -->
  <script src="../../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../../assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
  <script src="../../assets/vendor/popper.js/popper.min.js"></script>
  <script src="../../assets/vendor/bootstrap/bootstrap.min.js"></script>


  <!-- JS Implementing Plugins -->
  <script src="../../assets/vendor/appear.js"></script>
  <script src="../../assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
  <script src="../../assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

  <!-- JS Unify -->
  <script src="../../assets/js/hs.core.js"></script>
  <script src="../../assets/js/helpers/hs.hamburgers.js"></script>
  <script src="../../assets/js/components/hs.header.js"></script>
  <script src="../../assets/js/components/hs.tabs.js"></script>
  <script src="../../assets/js/components/hs.counter.js"></script>
  <script src="../../assets/js/components/hs.progress-bar.js"></script>
  <script src="../../assets/js/components/hs.rating.js"></script>
  <script src="../../assets/js/components/hs.scrollbar.js"></script>
  <script src="../../assets/js/components/hs.go-to.js"></script>

  <!-- JS Customization -->
  <script src="../../assets/js/custom.js"></script>

  <!-- JS Plugins Init. -->
  <script>
    $(document).on('ready', function () {
        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');

        // initialization of tabs
        $.HSCore.components.HSTabs.init('[role="tablist"]');

        // initialization of counters
        var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');

        // initialization of rating
        $.HSCore.components.HSRating.init($('.js-rating'), {
          spacing: 2
        });

        // initialization of HSScrollBar component
        $.HSCore.components.HSScrollBar.init( $('.js-scrollbar') );
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

        // initialization of horizontal progress bars
        setTimeout(function () { // important in this case
          var horizontalProgressBars = $.HSCore.components.HSProgressBar.init('.js-hr-progress-bar', {
            direction: 'horizontal',
            indicatorSelector: '.js-hr-progress-bar-indicator'
          });
        }, 1);
      });

      $(window).on('resize', function () {
        setTimeout(function () {
          $.HSCore.components.HSTabs.init('[role="tablist"]');
        }, 200);
      });
  </script>
</body>

</html>
