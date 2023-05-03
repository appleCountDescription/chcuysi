<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>싱싱마켓</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl-carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
     <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="sajo" class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="sajo" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#men">미션</a></li>
                             <li class="submenu">
                                <a href="javascript:;">싱싱마켓</a>
                                <ul>
                                <li><a href="market"><b>전체</b></a></li>
                                    <li><a href="fl"><b>과일</b></a></li>
                                    <li><a href="va"><b>채소</b></a></li>
                                    <li><a href="market"><b>기타</b></a></li>
                                </ul>
                            </li>
                            <li class="scroll-to-section"><a href="#kids">레시피</a></li>
                            
                            <li class="submenu">
                                <a href="javascript:;">회사소개</a>
                                <ul>
                                    <li><a href="about.html"><b>우리 SAJO는</b></a></li>
                                    <li><a href="products.html"><b>연혁</b></a></li>
                                    <li><a href="single-product.html"><b>경영 방침/경영 철학</b></a></li>
                                    <li><a href="contact.html"><b>오시는 길</b></a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:;">고객센터</a>
                                <ul>
                                    <li><a href="#"><b>자주 묻는 질문</b></a></li>
                                    <li><a href="#"><b>Q/A</b></a></li>
                                    <li><a href="#"><b>공지사항</b></a></li>
                                </ul>
                            </li>                         <!-- session.invalidate(); -->
                            
                            <li class="scroll-to-section"><a href="#explore">마이페이지</a></li>
                            
                            <c:choose>
                            
                            <c:when test="${sessionScope.logName ne null}">
                             <li class="submenu">
                               <a id="userLogin" href="javascript:;">${sessionScope.logName}</a>
                                 <ul>
                                    <li><a href="logOut"><b>로그아웃</b></a></li>
                                    <li><a href="#"><b>회원정보수정</b></a></li>
                                    <li><a href="#"><b>회원탈퇴</b></a></li>
                                    <li><a href="#"><b>구매내역</b></a></li>
                                </ul>
                             </li>
                                
                            </c:when>
                            <c:otherwise>  <li class="scroll-to-section"><a href="loginForm?pageType=index">로그인하기</a></li>
                            </c:otherwise>
                            
                            </c:choose>
                            
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading" id="top">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>싱싱마켓에 오신 것을 환영합니다.</h2>
                        <span>다양한 종류의 신선한 과일을 만나보세요!</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


    <!-- ***** Products Area Starts ***** -->
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                    
                   
                        <hr/>
                    
                    
                         <h3 id="CategoryHeader">${viewType}</h3>
                         
                         
                            <hr/>
                            
                            
                          <div id="Category">
                          
                          <div class="main-border-button cateborder">
                            <a id="all" href="#">전체</a>
                         </div>
                         
                        <div class="main-border-button cateborder">
                            <a id="va" href="#">채소</a>
                         </div>

                         <div class="main-border-button cateborder">
                              <a id="fl" href="#">과일</a>
                         </div> 
                         <div class="main-border-button cateborder">
                            <a id="banana" href="#">기타</a>
                         </div>   
                    </div>
                    
                     
                    </div>
                </div>
            </div>
      </div>
      
      
        <div class="container">
            <div class="row"> 
            
      <c:forEach items="${products}" var="i">   
      
            
                <div id="${i.category}" class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html">자세히 보기</a></li>

                                    <li><a href="single-product.html">장바구니</a></li>
                                </ul>
                            </div>
                            <img class="products" src="${pageContext.request.contextPath}/resources/images/${i.type}.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>${i.name}</h4>
                            <span>${i.price}</span>
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </c:forEach>
                
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li class="active">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Products Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
   <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png" alt="hexashop ecommerce templatemo">
                        </div>
                         <span id="bot">통신판매업 신고번호 : 2021-화성동부-0302</span> <br/>
                         <ul>
                            <li><a href="#">농산물 납품 및 긴급구출 제보 : abcd@efg.com zzzz</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                <h4>SAJO Company</h4>
               <span id="bot"> 상호명 : 주식회사 사조<br/>
                               공동대표 : 홍석희,고다인,윤재진,김현석<br/> 
                               사업자등록번호 : 572-81-02287<br/>
                               소재지 : 서울특별시 금천구 가산디지털로 302, 3층(가산동112)<br/>
               </span> 
                 </div>
                <!-- 메인페이지 제일 하단 부분 -->
                
                 <div class="col-lg-3">
                    <h4>고객센터</h4>
                    <ul>
                        <li><a href="#">전화 1588-3819</a></li>
                        <li><a href="#">결제도용신고 1588-3816</a></li>
                        <li><a href="#">1:1 문의 바로가기</a></li>
                    </ul>
                </div>
               <!-- 
                <div class="col-lg-3">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Homepage</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Help &amp; Information</h4>
                    <ul>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">FAQ's</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Tracking ID</a></li>
                    </ul>
                </div> -->
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p>SAJO Company는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있습니다.</p> 
                        <p>Copyright © 2022 SAJO Co., Ltd. All Rights Reserved. </p>
          
                      <!--  디자인 출처 기능  -->  
                       <!--  <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">SAJO</a>-->
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/owl-carousel.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/accordions.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/scrollreveal.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/imgfix.min.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/slick.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/lightbox.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

    <script>
    
        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
            
            $('.cart').click(function() {
            	alert('호호');
            	
            	 <% if(session.getAttribute("logName") == null ) { %> 
          	   if(confirm('장바구니에 담기 위해선 로그인이 필요합니다. 로그인 하시겠습니까?') )
          	   {
          		   location.href="loginForm?pageType=index&type="+$(this).find('#type').val();
          	   }else { location.href="#"; }
          	   <% } %>
          	   
          	   <% if(session.getAttribute("logName") != null ) { %> 
          	   if( confirm("상품을 장바구니에 담았습니다. 장바구니로 이동하시겠습니까?"))
          	   {
          		   location.href="cart?pageType=index&type="+$(this).find('#type').val();
          		   
          	   }else {
          		   
          		   if( confirm("이전 화면으로 돌아가시겠습니까?"))
              	   {
          			   location.href="sajo";
              	   }
          	   
          	   }
          	   <% } %>
            	
            });
            
            $('#all').click(function(event) {
           	 event.preventDefault();
               $('#채소').css('display','inline-block');
           	$('#과일').css('display','inline-block');
           	$('#CategoryHeader').text("상품 전체 목록");
           })
            
            $('#va').click(function(event) {
            	 event.preventDefault();
                $('#채소').css('display','inline-block');
            	$('#과일').css('display','none');
            	$('#CategoryHeader').text("채소 목록");
            })
            
            $('#fl').click(function(event) {
            	 event.preventDefault();
            	$('#과일').css('display','inline-block');
            	$('#채소').css('display','none');
            	$('#CategoryHeader').text("과일 목록");     	
            })
            

               
        });

    </script>

  </body>

</html>