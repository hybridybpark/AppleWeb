<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head>
<script>
function reSize(name){
    var width = eval("document."+name+".width");
    var height = eval("document."+name+".height");
    var temp = 0; 
    var max_width= 1280;   // 이미지의 최대 크기     
    
    if ( width > max_width ) {  // 이미지가 1280보다 크다면 너비를 1280으로 맞우고 비율에 맞춰 세로값을 변경한다.      
       height = height/(width / max_width);
       eval("document."+which+".width = max_width");     
       eval("document."+which+".height = height");
    }     
}
</script>
<title>사진</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="window.focus(); window.resizeTo(photo.width+10, photo.height+29); ">
 <center>
  <a href="javascript:window.close()">
   <img src="AppleWeb/image/col.jpg"  name="photo" border="0" alt="그림을 클릭하시면 창이 닫힙니다">
  </a>
 </center>
</body>
<script>reSize("photo");</script>
</html>
