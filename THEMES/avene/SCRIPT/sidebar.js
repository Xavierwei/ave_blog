
function MakeupRightPart() {
    $("#divArchives ul li:gt(12)").remove();

    $("#divTags ul li:gt(12)").remove();
    $("#divTags ul li span.tag-count").remove();
    $("#divTags ul").css({ 'width': '170px' });
    $("#divTags ul li").css({ 'float': 'left' });


    $("#divTags ul li").each(function () {

        var rand = Math.floor(Math.random() * 10 + 1);
        if (rand < 4) {
            $(this).css({ 'font-size': '12px' });
        } else if (rand < 7) {
            $(this).css({ 'font-size': '16px' });
        }
        else if (rand < 10) {
            $(this).css({ 'font-weight': 'bold' });
        }
    });

    var mod_archives = $("#divArchives ul li").children().length;
   if(mod_archives>1)
    {
        clearInterval(IntervalID);
    }
 }
 var IntervalID = setInterval(MakeupRightPart, 3000);

window.onload=MakeupRightPart;