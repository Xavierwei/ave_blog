// JavaScript Document
// JavaScript Document
$(document).ready(function(){
		
	   var url =window.location.host.toString()
	   if (url.indexOf("internal") != -1) {
		   
		   url = "http://avene2009.internal.nurunci.com"
		   
	   } else{
			if (url.indexOf("test") != -1) {	
			
				url = "http://avenetest.abc-myclub.com"
			
	  		 } else {
		   		
				url="http://www.eau-thermale-avene.cn"
			 
			 }
	   }
	  
		var skincare = url+"/web_api.aspx?task=get_nav_skincare&format=json&jsoncallback=?";
		var product = url+"/web_api.aspx?task=get_nav_product&format=json&jsoncallback=?";
		 
		 
		$.getJSON(product, function(json){
				
			var _url;
			var _title;
			var _item;
			var _temphtml="<ul>";
			
			for (i=0; i<json.saleData.length; i++) {
				
				_url = json.saleData[i].url;
				_title = json.saleData[i].title;
				_item = "<a href='"+url+"/"+_url+"'>"+ _title +"</a>";
				_temphtml +="<li>"+_item+"</li>";
				
			}
			
			_temphtml = _temphtml+"</ul>";
			
			$('.nav3').after(_temphtml);
		
		});			 
		 
		$.getJSON(skincare, function(json){
				
			var _url;
			var _title;
			var _item;
			var _temphtml="<ul>";
			
			for (i=0; i<json.saleData.length; i++) {
				
				_url = json.saleData[i].url;
				_title = json.saleData[i].title;
				_item = "<a href='"+url+"/"+_url+"'>"+ _title +"</a>";
				_temphtml +="<li>"+_item+"</li>";
				
			}
			
			_temphtml = _temphtml+"</ul>";
			
			$('.nav2').after(_temphtml);
		
		});
		
		$("#nav > li").hover(
			function(){
				$("#nav > li ul").hide();
				$(this).children().next().slideDown();
			},function(){
				$("#nav > li ul").hide();
			}
		);		
	
		
})	