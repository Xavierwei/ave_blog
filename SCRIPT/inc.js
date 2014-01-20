
		
		$(".box-menu li a").click(function(){
			
			boxchange($(".box-menu li a").index($(this)));
		})
		function boxchange(arg){
			$(".box-menu li").removeClass("selectd");
			$(".box-menu li:nth-child("+(arg+1)+")").addClass("selectd");
			$(".box-content > div").hide();
			$(".box-content div:nth-child("+(arg+1)+")").show();
            $('.box-scrollcontent').eq(arg).jScrollPane({showArrows:true});
		}

		$(".footfun li").hover(
			function(){
                $(this).stop();
				$(".footfun li a").show();
				$(this).animate({width: "65px"},300);
                
				
			},function(){
                
				$(".footfun li a").hide();
				$(this).animate({width: "9px"},100);
			}
		)
		$(".footlang").toggle(
			function(){
			
				$(".footlang div").animate({
				opacity: 1,
				height: "32px",
				top:"-32px"},1000)
		
			},function(){
		
				$(".footlang div").animate({
				opacity: 0,
				height: "0",
				top:"0"},1000)
		
			}
		);
		
		$(".footlang a").click(function(){
			alert(11);
			var url=$(this).attr("href")
			window.open(url);
					
		});		
		
		

		$(".searchbtn").click(function(){
			//$('.searchbox').animate({right: "0px"},300);
			strkeyword=document.getElementById("keyword").value;
            window.location.href=linkname+"&keyword="+escape(strkeyword);
            
		});
		$(".searchclose").click(function(){
			$('.searchbox').animate({right: "-9999em"},300);
			$('.searchbox').hide();
		});
		/*
		if(ckeyword!=""){
		$('.searchbox').show();
        $('.searchbox').animate({right: "0px"},300);
        }*/
		
