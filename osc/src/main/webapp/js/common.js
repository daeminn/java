$(window).ready(function () {
   let wW = window.innerWidth;
   let wH = window.innerHeight;
   const body = $("body");
   const hd = $('#osc-hd');
   let gnbOpener = $('.gnb-open');
   let gnbCloser = $('.gnb-close');
   let gnbWrap = $('.gnb-wrap');
   let depth1 = $('.depth1');
   let depth1a = $('.depth1>li>a')
   let menuPullDown = $('.all-menu-open');
   let menuCloser = $('.all-menu-close');
   let modal = $('.modal');
   let allMenu = $('#all-menu');
   let depth2 = $(".depth2");
   let lnb = $(".lnb");
   let loginForm = $(".login-form");
   let loginFormOpen = $(".login-form-open");
   let loginFormClose = $(".login-form-close, .modal");
   rwd();

   $(window).resize(function () {
      rwd();
   });

   function rwd() {
      wW = window.innerWidth;
      wH = window.innerHeight;
      if (wW < 768) {
         body.addClass("mo").removeClass("tb pc");
         depth2.stop().slideUp();
         lnb.css("height","inherit");
      } else if (wW >= 768 && wW < 1024) {
         body.addClass("tb").removeClass("mo pc");         
         depth2.stop().slideUp();      
         lnb.css("height","inherit");
      } else {
         body.addClass("pc").removeClass("mo tb");
         depth2.show();
      }
   }  

   //모바일 GNB 작동
   $(".depth1>li").on({
      "click": (function () {
         if (body.hasClass("mo")||body.hasClass("tb")) {
            $(this).children(".depth2").stop().slideToggle(300);
            $(this).siblings().find(".depth2").stop().slideUp(300);
         }
      })
   });


   
   //PC GNB 활성화
   hd.on({
      "mouseenter": function () {
         hd.addClass("active");
         if (body.hasClass("pc")) {
            
         }
      },
      "mouseleave": function () {
         if (body.hasClass("pc")) {
            hd.removeClass("active");
         }
      }
   });
  

   //모바일 GNB 열기
   gnbOpener.on({
      "click": function () {
         if (body.hasClass("mo")||body.hasClass("tb")) {
            gnbWrap.addClass("down");
         }
      }
   });
   
   //모바일 GNB 닫기
   gnbCloser.on({
      "click": function () {
         if (body.hasClass("mo")||body.hasClass("tb")) { 
            gnbWrap.removeClass("down")
            depth2.stop().slideUp();
         }
      }
   });

   //사이트맵 열기
   menuPullDown.on ({
      "click":function() {
         if (body.hasClass("pc")) {
            allMenu.addClass("slide");
            $(this).fadeOut();
         }
      }
   })
   //사이트맵 닫기
   menuCloser.on ({
      "click":function() {
         if (body.hasClass("pc")) {
            allMenu.removeClass("slide");
            menuPullDown.fadeIn();
         }
      }
   })

   loginFormOpen.on ({
      "click":function() {
         if (body.hasClass("pc")) {
            loginForm.addClass("open");
            modal.show();
         }
      }
   })
   loginFormClose.on ({
      "click":function() {
         if (body.hasClass("pc")) {
            loginForm.removeClass("open");
            modal.hide();
         }
      }
   })
})