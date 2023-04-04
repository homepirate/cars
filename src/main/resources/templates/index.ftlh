<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Ползунок</title>
  <script>
   function sizePic() {
    par1 = document.getElementById("par1").value;
    par2 = document.getElementById("par2").value;
    par3 = document.getElementById("par3").value;
    console.log("par1", par1, "par2", par2, "par3", par3)
   }
  </script>
 </head>
 <body>
  <p>: Параметр 1<input type="range" min="0" max="100" id="par1"
     value="3"></p>
 <p>: Параметр 2<input type="range" min="0" max="100" id="par2"
      value="3"></p>
  <p>: Параметр 3<input type="range" min="0" max="100" id="par3"
       value="3"></p>
  <button id="send" onclick="sizePic()">Отправить</button>
 </body>
</html>