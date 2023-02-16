$(function(){
    $("#osc-ft").removeClass("fp-auto-height");
    //페이지 구분
    let page = $("body").attr("id");
    let mainNum = page.slice(3,4); //대메뉴 번호
    let subNum = page.slice(5,6); //서브메뉴 번호
    let lnbActiveNum = page.slice(-1); //현재 메뉴 표시
    let bgColor = ["#333", "#333", "#333", "#A62029"];
    //1. 제목 설명 밑 배경색 지정
    $(".lnb-depth1").css("background-color", "#fefefe");
    $(".lnb-depth2").css("background-color", bgColor[mainNum]);

    //2. 서브비주얼 이미지 출력
    // let subBgImg = "url('./images/sub/sub_bg_0" + mainNum + ".jpg')";
    let subHdBgImg = "url('./images/sub/sub_visual_0" + mainNum + ".jpg')";

    // $(".sub-bg-area").css("background-image", subBgImg);
    $(".hgroup").css("background-image", subHdBgImg);
    
    //메인메뉴 레이블
    let main = ["회사소개","신약개발","의료사업","기능소재", "투자정보", "인재채용", "준법경영"];
    //서브메뉴 레이블
    let sub = [];
    sub[0] = "오스코텍 소개|회사연혁|Contact Us";
    sub[1] = "신약개발개요|류마티스 관절염|면역혈소판 감소증|급성골수성 백혈병|비소세포성폐암|알츠하이머 치매";
    sub[2] = "치과용뼈이식재|치과용멤브레인";
    sub[3] = "건강식품소재|일반식품소재|Product";
    sub[4] = "공지사항|언론센터|IR Materials|Coverage Reports"
    sub[5] = "채용공고";
    sub[6] = "윤리강령|신고하기";

    // 3. 반복문으로 각 배열 번지별로 저장된 문자 나눠서 서브배열 만들기
    for(let i = 0; i < sub.length; i++) {
        sub[i] = sub[i].split("|");
    }

    //서브메뉴 URL
    let subUrl = [];
    subUrl[0] = ["../sub_introduce.html", "#", "#"];
    subUrl[1] = ["#", "../sub_RA.html", "#", "#", "#", "#"];
    subUrl[2] = ["sub_MBbones.html", "#"];
    subUrl[3] = ["#", "#","#"];
    subUrl[4] = ["#", "#","#","#"];
    subUrl[5] = ["#"];
    subUrl[6] = ["#","#"];

    //서브메뉴 레이블 설명
    let subDesc = [];
    subDesc[0] = ["Translating science into medicine", "#", "#", "#", "#"];
    subDesc[1] = ["인류의 건강을 선도하는 생명공학 기업","세계적 전문 전임상 / 임상대행 기관들을 통해 글로벌 신약을 개발하고 있습니다.","#","#","#","#"];
    subDesc[2] = ["인류의 건강을 선도하는 생명공학 기업", "#", "#"];
    subDesc[3] = ["#", "1", "2", "3", "4"];
    
    // 4. 제목과 설명 출력
    $(".sub-h2").text(sub[mainNum][subNum]);
    $(".desc-txt").text(subDesc[mainNum][subNum]);
    
    
    
    // 5. 서브메뉴(lnb) 리스트 생성
    let lnb1 = $(".lnb-depth1");
    let lnb2 = $(".lnb-depth2");
    
    lnb1.append("<li class=\"active\"><a href=\"#void\">" + main[mainNum] + "</a></li>");
    for(let j = 0; j < main.length; j++) {
        lnb1.append("<li><a href=\"" + subUrl[j][0] +"\">" + main[j] + "</a></li>");
    }
    lnb2.append("<li class=\"active\"><a href=\"#void\">" + sub[mainNum][subNum] + "</a></li>");
    for(let k = 0; k < sub[mainNum].length; k++) {
        lnb2.append("<li><a href=\"" + subUrl[mainNum][k] +"\">" + sub[mainNum][k] + "</a></li>");
    }    

    // 6. lnb 작동    
    let lnbHeight = $('.lnb>li').eq(1).height();
    let subLength = sub[mainNum].length;
    let mainLength = main.length;
    let lnbFirstHeight = $('.lnb').height();
    
    lnb1.on({
        "click": function(){
            $(this).css("height", lnbHeight * mainLength + lnbFirstHeight + 1);    
            $(this).css("border-bottom", "1px solid #ddd");

            if($(this).height() > lnbFirstHeight){//lnb작동 후 높이가 처음 높이보다 클 경우

                $(this).css("height", $('#osc-lnb').height());
                $(this).css("border", "none");
            }
        },
        "mouseleave": function(){
            $(this).css("height", $('#osc-lnb').height());
            $(this).css("border", "none");
        }
        // },
        // "mouseleave focusout": function(){
        //     $(this).css("height", $('#osc-lnb').height());  
        //     $(this).css("border", "none");
        // }
    });
    // console.log(lnbHeight * mainLength + lnbFirstHeight);
    lnb2.on({
        "click": function(){
            $(this).css("height", lnbHeight * subLength + lnbFirstHeight);
            
            if($(this).height() > lnbFirstHeight){
                    $(this).css("height", $('#osc-lnb').height());
                }
        },
        "mouseleave": function(){
            $(this).css("height", $('#osc-lnb').height());
        }
        // "mouseenter focusin": function(){
        //     $(this).css("height", lnbHeight * subLength + lnbFirstHeight);    
        // },
        // "mouseleave focusout": function(){
        //     $(this).css("height", $('#osc-lnb').height());  
        // }
    });
    //7. 본문 글자크기 확대/축소
    let fz = 16;
    let fzMax = 20;
    let fzMin = 12;

    $(".txt-reset-btn").click(function(){
        fz = 16;
        $("#osc-main-container").css("font-size", fz + "px");
        $(".lnb").css("height", $('#osc-lnb').height());
    });
    $(".txt-size-plus-btn").click(function(){
        // condition ? true : false;
        fz == fzMax ? fz = fzMax : fz++;
        $("#osc-main-container").css("font-size", fz + "px");
        $(".lnb").css("height", $('#osc-lnb').height());
    });
    $(".txt-size-minus-btn").click(function(){
        fz == fzMin ? fz = fzMin : fz--;
        $("#osc-main-container").css("font-size", fz + "px");
        $(".lnb").css("height", $('#osc-lnb').height());
    });

     // 8. LNB고정을 위한 값 설정
     let wH = $(window).height();
     let lnbTg = $(".lnb-container");
     let lnbTop = lnbTg.offset().top + lnbTg.height();
     let scTop = $(window).scrollTop();

     $(window).resize(function(){
         wH = $(window).height();
         lnbTop = lnbTg.offset().top + lnbTg.height();
     });

    // 9. 스크롤시 LNB고정, 위로가기 버튼 제어
    const topBtn = $(".top-btn");
    $(window).scroll(function(){
        scTop = $(window).scrollTop();
        if(scTop > lnbTop) {
            lnbTg.addClass("fixed");
            topBtn.fadeIn(300);
        } else {
            lnbTg.removeClass("fixed");
            topBtn.fadeOut(300);
        }
    });

    //10. tab메뉴
    
    let tabArr = [];
    let tabLi = $('.tab-li'); // 탭메뉴버튼

    for(let i = 0; i < tabLi.length; i++) { //tabArr배열안에 탭메뉴 컨텐츠들의 'data-tab'속성값 할당
        tabArr[i] = tabLi.eq(i).attr("data-tab");
    }
    // console.log(tabArr);
    
    tabLi.click(function(){
        let tabAttr = $(this).attr("data-tab");
        let tabID = "tab"+($(this).index()+1); //tab00 + 1 -> tab01
        let tabContent = $('.tabcontent');

        tabLi.removeClass('on');
        tabContent.removeClass('show');
        
        if(tabArr.includes(tabID) && tabArr.includes(tabAttr)) {
            $('#'+tabID).addClass('show');
            $(this).addClass('on');
            // console.log(tabArr.includes(tabID) && tabArr.includes(tabAttr));
        }
        // $(tabID).addClass('show');
    })
    
    
    // const tabList = $(".tab-menu li");
    // tabList.click(function(){
    //     let activeTab = $(this).attr('data-tab');
        
    //     $(this).siblings().removeClass('on');
    //     console.log($(this).siblings());
    //     $(this).addClass('on');
    //     $('.tabcontent').removeClass('show');
    //     $('#' + activeTab).addClass('show');
    // })
});