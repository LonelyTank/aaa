<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>许愿墙</title>
   <%-- <link href="css/base.css" type="text/css" rel="stylesheet" />--%>
    <script src="../jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <style>
        #div1 {
            display: none;
            position: absolute;
            left: 50%;
            top: 50%;
            width: 240px;
            text-align: center;
        }

        .div1 {
            width: 240px;
            height: 67px;
        }

        .div2 {
            width: 240px;
            height: 140px;
            padding-top: 5px
        }

        .div3 {
            width: 240px;
            height: 60px;
        }
    </style>
</head>

<body>
<!-- <div style="width: 1500px;height: 900px; border:3px solid #fff"> -->
<div id="setdiv"
     style="border:3px solid #f0f0f0; width: 500px;height: 400px;padding-top: 20px">
    <form action="">
        <div id="div2" style="float: left;">
            <label>许愿留名：</label> <input type="text" id="text1" />
        </div>
        <div style="float: left; padding-top: 20px">
            <label>许愿内容：</label>
            <textarea id="text2" rows="15" cols="40"></textarea>
        </div>
        <div style="float: left; padding-top: 20px">
            <label>许愿图标：</label> <label><input name="tu" type="radio"
                                               value="0" checked="checked" /><img alt="" src="../img/bpic_11.gif">
        </label> <label><input name="tu" type="radio" value="1" /><img
                alt="" src="../img/bpic_25.gif"> </label> <label><input
                name="tu" type="radio" value="2" /><img alt=""
                                                        src="../img/bpic_13.gif"> </label>
        </div>
        <div style="float: none;"></div>
        <div style="float: left; padding-top: 30px;padding-left: 20px">
            <label>许愿颜色：<select id="text4" name="">
                <option value="0">橙色</option>
                <option value="1">红色</option>
                <option value="2">绿色</option>
                <option value="3">蓝色</option>
            </select> </label>
        </div>
        <div style="float: left; padding-top: 30px;padding-left: 20px">
            <input type="button" value="许愿" onclick="javascript:OpenDiv();"
                   id="open">
        </div>
    </form>
</div>
<div id="div1">
    <div id="dis1" class="div1"></div>
    <div id="dis2" class="div2"></div>
    <div id="dis3" class="div3">
        <div id="dis4"
             style="float: left;width: 39px;height: 30px;margin-left: 27px"></div>
        <div id="dis5"
             style="float: right;margin-right: 27px;margin-top: 10px"></div>
    </div>
</div>

<!-- </div> -->

</body>
</html>
<script>
    function OpenDiv() {
        var now = new Date();
        var temp = document.getElementById("text1").value;//获取名字
        var temp1 = document.getElementById("text2").value;//获取内容
        var temp3 = $("input[name='tu']:checked").val();//获取图标
        var temp4 = document.getElementById("text4").value;//获取颜色

        var div = document.createElement("div");	//创建一个div
        var div11 = document.createElement("div");
        var div12 = document.createElement("div");
        var div13 = document.createElement("div");

        var setdiv = document.getElementById("setdiv");	//获取录入信息框的div
        div.innerHTML = "你好";
        setdiv.style.position = "relative";
        div.style.position = "absolute";

        /*设置随机位置  */
        while(true){
            var random1 = Math.random()*1400;
            var random2 = Math.random()*900;
            if(random1>500||random2>400){
                div.style.left = random1+"px";
                div.style.top = random2+"px";
                break;
            }
        }

        document.body.appendChild(div);	//将创建的div放入body

        document.getElementById("div1").style.display = "block";

        document.getElementById("dis2").innerText = temp1;
        document.getElementById("dis5").innerText = temp;
        if (temp3 == 0) {
            document.getElementById("dis4").style.background = "url(../img/bpic_11.gif) no-repeat";
        } else if (temp3 == 1) {
            document.getElementById("dis4").style.background = "url(../img/bpic_25.gif) no-repeat";
        } else if (temp3 == 2) {
            document.getElementById("dis4").style.background = "url(../img/bpic_13.gif) no-repeat";
        }

        if (temp4 == 1) {
            document.getElementById("dis1").style.background = "url(../img/a4_1.gif)";
            document.getElementById("dis2").style.background = "url(../img/a4_2.gif)";
            document.getElementById("dis3").style.background = "url(../img/a4_3.gif)";
        } else if (temp4 == 0) {
            document.getElementById("dis1").style.background = "url(../img/a3_1.gif)";
            document.getElementById("dis2").style.background = "url(../img/a3_2.gif)";
            document.getElementById("dis3").style.background = "url(../img/a3_3.gif)";
        } else if (temp4 == 2) {
            document.getElementById("dis1").style.background = "url(../img/a5_1.gif)";
            document.getElementById("dis2").style.background = "url(../img/a5_2.gif)";
            document.getElementById("dis3").style.background = "url(../img/a5_3.gif)";
        } else if (temp4 == 3) {
            document.getElementById("dis1").style.background = "url(../img/a7_1.gif)";
            document.getElementById("dis2").style.background = "url(../img/a7_2.gif)";
            document.getElementById("dis3").style.background = "url(../img/a7_3.gif)";
        }

        /* document.getElementById("divv").innerText=temp1; */
    }
    /* function CloseDiv() {
        document.getElementById("div1").style.display = "none";
        document.getElementById("open").style.display = "block";
    } */
</script>
