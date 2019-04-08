$(function(){
    $("#number").change(function(){
        var idNo = $("#number").val();
        var str = new String();
        for(var i = 1; i <= idNo; i++){
            str += "<input type=\"text\" name=\"member[]\" id=\"member[]\"><br>";
        }
        $(".add-member")
            .html(str);//メンバーフォームを追加する
    });
});