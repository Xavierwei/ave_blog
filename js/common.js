// Common Javascript Functions



/** Product index **/

function $(obj){return document.getElementById(obj)}
function findPosition(oElement){var x2 = 0;var y2 = 0;var width = oElement.offsetWidth;var height = oElement.offsetHeight;if( typeof(oElement.offsetParent) != 'undefined' ){for( var posX = 0, posY = 0; oElement; oElement = oElement.offsetParent ) {posX += oElement.offsetLeft; posY += oElement.offsetTop;}x2 = posX + width;y2 = posY + height;return [ posX, posY ,x2, y2];} else{x2 =oElement.x + width;y2 = oElement.y + height;return [ oElement.x, oElement.y, x2, y2];}}
function loadOption(OptArr,OptName,box){
$(box).innerHTML = "<div id=\""+OptName+"_Select\" class=\"proindexselect\"><a href=\"javascript:void(0)\" onFocus=\"block_Opt(this,'"+OptName+"')\" onBlur=\"none_Opt('"+OptName+"')\" class=\"sel_a\"><span id=\""+OptName+"_Select_val\" class=\"proindexselect_val\">Load...</span><input name=\""+OptName+"\" type=\"hidden\" id=\""+OptName+"\"/><img src=\"images/default/proindex_arrow.gif\" width=\"17\" height=\"17\" align=\"absbottom\" class=\"sm_pic\" /></a><div id=\""+OptName+"_Option\" class=\"proindexoption\"></div></div>";
var i = 0;
var opt_Html = "";
	for(opt in OptArr){
		if(OptArr[opt][2])i = opt;
		$(OptName).value = OptArr[i][1];
		opt_Html+="<a href=\"javascript:void(0)\" onmousedown=\"setOptval('"+OptName+"','"+OptArr[opt]+"')\">&nbsp;"+OptArr[opt][0]+"</a>";
	}
	!document.all?$(OptName+'_Select_val').textContent = OptArr[i][0]:$(OptName+'_Select_val').innerText = OptArr[i][0];
	$(OptName+'_Option').innerHTML = opt_Html;
}
function block_Opt(obj,opt){
	var w = findPosition(obj);
	$(opt+'_Option').style.top = w[1]+22+"px";
	$(opt+'_Option').style.left = w[0]+"px";
	$(opt+'_Option').style.width = w[2]-w[0]+"px";
	$(opt+'_Option').style.display = 'block';
}
function none_Opt(opt){setTimeout("$('"+opt+"_Option').style.display='none'",200);}
function setOptval(opt,Oarr){
Oarr = Oarr.split(',');
!document.all?$(opt+'_Select_val').textContent = Oarr[0]:$(opt+'_Select_val').innerText = Oarr[0];
$(opt).value = Oarr[1];
}



/** End **/