<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dinos</title>
  <link rel="icon" href="icon/myfavicon.svg">
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/fanitem.css">
</head>
<body>
  <!--  상단(헤더) 네비게이션 -->
  <div id="header">
    <div class="desktop-only">
      <div class="sub-wrap">
          <div class="sub-con">
              <ul class="site-tab">
                  <li onclick="window.open('https://www.ncdinos.com/')">홈페이지</li>
                  <li onclick="window.open('https://www.ncdinospodshop.com/')">POD샵</li>
              </ul>
              <ul class="user-tab">
                      <li onclick="login()">로그인</li>
                      <li onclick="join()">회원가입</li>
              </ul>
          </div>
      </div>
      <div class="nav-wrap">
          <div class="nav-con">
              <img src="img/img-header-emblem@2x.png" alt="" onclick="movePage('/')" style="cursor: pointer;">
              <ul class="gnb-wrap">
                  <li onclick="movePage('/product/list/UN')">유니폼</li>
                  <li onclick="movePage('/product/list/HA')">모자</li>
                  <li onclick="movePage('/product/list/CL')">의류</li>
                  <li onclick="movePage('/product/list/G')">팬상품</li>
              </ul>
              <ul class="gnb-ico">
                  <li onclick="toggleSearchLayout()">
                    <!-- 글꼴 모양 태그 : 아이콘 표시 할때 활용합니다. -->
                    <i class="ic-search"></i>
                  </li>
              </ul>
          </div>
      </div>
  </div>
  </div>

  <!--  메인 영역 -->
  <div id="container">
    <div id="contents">
      <!--  왼쪽 사이드 메뉴 -->
      <ul id="left-menu">
          <li><span>유니폼</span></li>
          <li><span>모자</span></li>
          <li><span>의류</span></li>
          <li><span>팬상품</span></li>
      </ul>
      <div id="cont-wrap">
        <!-- 현재 메뉴 위치 표시  -->
        <ul class="depth">
            <li>
              <i class="ic-home"></i>
            </li>
            <!-- 중간에 > 기호는 어제 복습 -->
            <li>팬상품</li>
        </ul>
        <!-- 상품 목록 -->
         <div class="cont-box">

          <!-- 상품 목록 이미지 -->
           <ul class="item-list">
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/1.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won"> 원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/2.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/3.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/4.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/5.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/6.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/7.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/8.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/9.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/10.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/11.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
                <!--  상품 1개가 li 요소 1개로 작성 -->
                <li>
                    <div class="img" style="background-image: url(product/12.jpg);">
                    </div>
                    <!-- 상품명,가격 -->
                     <div class="desc">
                        <h6>레시 키링</h6>
                        <div class="price">16,000
                          <span class="won">원</span>
                        </div>
                        <div class="label-wrap">
                          <span class="label blue">신상품</span>
                          <span class="label gray">품절</span>
                        </div>
                     </div>
                </li>
           </ul>
         </div>
      </div>
    </div>
  </div>


</body>
</html>