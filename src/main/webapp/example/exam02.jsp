<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head>
<script>
function reSize(name){
    var width = eval("document."+name+".width");
    var height = eval("document."+name+".height");
    var temp = 0; 
    var max_width= 1280;   // �̹����� �ִ� ũ��     
    
    if ( width > max_width ) {  // �̹����� 1280���� ũ�ٸ� �ʺ� 1280���� �¿�� ������ ���� ���ΰ��� �����Ѵ�.      
       height = height/(width / max_width);
       eval("document."+which+".width = max_width");     
       eval("document."+which+".height = height");
    }     
}
</script>
<title>����</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="window.focus(); window.resizeTo(photo.width+10, photo.height+29); ">
 <center>
  <a href="javascript:window.close()">
   <img src="AppleWeb/image/col.jpg"  name="photo" border="0" alt="�׸��� Ŭ���Ͻø� â�� �����ϴ�">
  </a>
 </center>
</body>
<script>reSize("photo");</script>
</html>
