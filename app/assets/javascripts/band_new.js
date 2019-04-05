$(function(){
    $("#number").change(function(){
        var idNo = $("#number").val();
        for(var i = 1; i <= idNo; i++){
            $(".add-member")
            .append("<input type=\"text\" name=\"member[]\" id=\"member[]\">");//メンバーフォームを追加する
        }
    });
});