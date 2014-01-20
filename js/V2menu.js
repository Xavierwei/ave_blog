/***
    Created by Zhong Wei on 20110509
**/



function getElementPos(elementId) {
    var ua = navigator.userAgent.toLowerCase();
    var isOpera = (ua.indexOf('opera') != -1);
    var isIE = (ua.indexOf('msie') != -1 && !isOpera); // not opera spoof
    var el = document.getElementById(elementId);
    if (el == null)
    {
        return null;
    }

    if (el.parentNode === null || el.style.display == 'none') {
        return false;
    }
    var parent = null;
    var pos = [];
    var box;
    if (el.getBoundingClientRect)    //IE
    {
        box = el.getBoundingClientRect();
        var scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
        var scrollLeft = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft);
        return { x: box.left + scrollLeft, y: box.top + scrollTop };
    } else if (document.getBoxObjectFor)    // gecko   
    {
        box = document.getBoxObjectFor(el);
        var borderLeft = (el.style.borderLeftWidth) ? parseInt(el.style.borderLeftWidth) : 0;
        var borderTop = (el.style.borderTopWidth) ? parseInt(el.style.borderTopWidth) : 0;
        pos = [box.x - borderLeft, box.y - borderTop];
    } else    // safari & opera   
    {
        pos = [el.offsetLeft, el.offsetTop];
        parent = el.offsetParent;
        if (parent != el) {
            while (parent) {
                pos[0] += parent.offsetLeft;
                pos[1] += parent.offsetTop;
                parent = parent.offsetParent;
            }
        }
        if (ua.indexOf('opera') != -1 || (ua.indexOf('safari') != -1 && el.style.position == 'absolute')) {
            pos[0] -= document.body.offsetLeft;
            pos[1] -= document.body.offsetTop;
        }
    }
    if (el.parentNode) {
        parent = el.parentNode;
    } else {
        parent = null;
    }
    while (parent && parent.tagName != 'BODY' && parent.tagName != 'HTML') { // account for any scrolled ancestors
        pos[0] -= parent.scrollLeft;
        pos[1] -= parent.scrollTop;
        if (parent.parentNode) {
            parent = parent.parentNode;
        } else {
            parent = null;
        }
    }
    return { x: pos[0], y: pos[1] };
}


/* invoke this function by clicking certain hyperlink at the left navigator */
function hightlight_firstMenu() {
    var firstMenuContainer = document.getElementById('sitemapinfo');

    if (firstMenuContainer) {
        var aArray = firstMenuContainer.getElementsByTagName("a");
        if (aArray && aArray.length > 2) {
            var firstmenu = document.getElementById(aArray[2].title);
            if (firstmenu) {
                firstmenu.className = "selected default"
            }
        }        
    }
}


function reset_footer_position() {

    var vFoot = document.getElementById('foot');
    if (vFoot) {
        var vFoot_top_pos = getElementPos("footer_top_dynamic");
        if (vFoot_top_pos == null) {
            vFoot_top_pos = getElementPos("footer_top_static");
        }
        
        if (navigator.userAgent.indexOf("MSIE") > 0) {

            vFoot.style.left = document.body.offsetLeft; 
            
            var bodyHeight ;
            if (document.documentElement.clientHeight < document.documentElement.scrollHeight) {
                bodyHeight = document.documentElement.scrollHeight;
            }
            else {
                bodyHeight = document.documentElement.clientHeight;
            }
//            alert('offsetHeight:' + document.body.offsetHeight);
////            alert('scrollTop:' + document.documentElement.scrollTop);
//            alert('clientHeight:' + document.documentElement.clientHeight);
//            alert('body_clientHeight:' + document.body.clientHeight);
//            alert('scrollHeight:' + document.documentElement.scrollHeight);
//            debugger;

            if (vFoot_top_pos.y - bodyHeight < 0)
                vFoot.style.top = bodyHeight ;
            else
                vFoot.style.top = vFoot_top_pos.y;
        }
        else {
            vFoot.style.left = document.body.offsetLeft + 'px';

            if (vFoot_top_pos.y - (document.documentElement.scrollHeight) < 0)
                vFoot.style.top = (document.documentElement.scrollHeight) + 'px';
            else
                vFoot.style.top = vFoot_top_pos.y + 'px';
        }
        vFoot.style.display = "block";
    }
}