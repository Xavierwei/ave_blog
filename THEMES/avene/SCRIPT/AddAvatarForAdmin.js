$(document).ready(function () {
    $(".msg-box").each(function () {
        var content = $(this).html();
        var s = content.indexOf("埋线双眼皮");
        if (s > -1) {
            $(this).find(".msg-box-avatar").prepend("<image src='/themes/Avene/style/default/blog_iconavene.gif'/>");
            var imageWidth = $(this).find(".msg-box-avatar").width();
            var contentWidth = $(this).find(".msg-box-content").width();
            $(this).find(".msg-box-content").css('width', contentWidth - imageWidth );
        }
    });
});