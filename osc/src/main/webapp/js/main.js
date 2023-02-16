$(function(){
   const body = $("body");
   const hd = $('#osc-hd');
   const fpCon = $("#osc-main-container");
   let ftEl = $(".osc-ft-container").clone();
   $(".sec04").append(ftEl);
   fpCon.fullpage({
     navigationTooltips: ['처음으로','신약개발·의료사업','언론보도','인재채용', "하단정보"],
     navigation: true,
     navigationPosition: 'right',
     scrollingSpeed: 1000,
     normalScrollElements: '.gnb-wrap, #all-menu',
     lazyLoading: true,
     showActiveTooltip:true,
     anchors: ["main", "biz", "media", "incruit", "ft"]  
    });
   
  rwd();

  $(window).resize(function () {
     rwd();
  });

  function rwd() {
   wW = window.innerWidth;
   wH = window.innerHeight;
   if (wW < 768) {
      body.addClass("mo").removeClass("tb pc");
      $(".develop, .business").css("width","inherit")      
   
   } else if (wW >= 768 && wW < 1024) {
      body.addClass("tb").removeClass("mo pc");
      $(".develop, .business").css("width","50%");
   } else {
      body.addClass("pc").removeClass("mo tb");
      $(".develop, .business").css("width","50%");         
   }
  }  

  
  //풀페이지 네비게이션 show/hide
  hd.on({
      "mouseenter": function () {
         if (body.hasClass("pc") || body.hasClass("tb")) {
            $('#fp-nav').css("opacity","0");
         }
      },
      "mouseleave": function () {
         if (body.hasClass("pc") || body.hasClass("tb")) {
            $('#fp-nav').css("opacity","1");
         }
      }
   });
  //메인화면 sec01 table-cell 이벤트
  $(".develop, .business").on({
    "mouseenter": function(){
      if(body.hasClass("pc") || body.hasClass("tb")){
          $(this).css("width","70%");
          $(this).siblings().css("width","30%");
      }
    },
    "mouseleave": function(){
      if(body.hasClass("pc") || body.hasClass("tb")){
          $(this).css("width","50%");
          $(this).siblings().css("width","50%");
      }
   }
})

});