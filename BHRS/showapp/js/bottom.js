/**
 * Created by Administrator on 2015/9/16 0016.
 */
function header_run(){
    var iframe = document.getElementById("header");
    try{
        var bHeight = iframe.contentWindow.document.body.scrollHeight;
        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
        var height = Math.max(bHeight, dHeight);
        iframe.height = height;
    }catch (ex){}
}
function foot_run(){
    var iframe = document.getElementById("foot");
    try{
        var bHeight = iframe.contentWindow.document.body.scrollHeight;
        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
        var height = Math.max(bHeight, dHeight);
        iframe.height = height;
    }catch (ex){}
}