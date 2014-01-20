function isEmail(fld) {

    if (fld == null) {
        return false;
    }

    if (fld.length <= 0) {
        return true;
    }

    if (fld.indexOf('@') < 1) {
        return false;
    }

    var mail_box = fld.substring(fld.indexOf('@') + 1);

    if (mail_box == null || mail_box.length < 1) {
        return false;
    }

    if (mail_box.indexOf('.') < 1) {
        return false;
    }

    var corp = mail_box.substring(mail_box.indexOf('.') + 1);

    if (corp == null || corp.length < 1) {
        return false;
    }
    return true;
}
//检查EMAIL格式是否合法
function checkemailformat(emailTextBox) {
    
    var email = document.getElementById(emailTextBox);
    if (email) {
        if (isEmail(email.value)) {
            return true;
        }
        else {
            alert('邮件格式不对！');
            return false;
        }
    }
    else {
        return false;
    }
}