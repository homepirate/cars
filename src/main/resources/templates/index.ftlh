<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Ползунок</title>
  <script>
   function sizePic() {
   var data = new FormData();
   data.append("par1", document.getElementById("par1").value)
   data.append("par2", document.getElementById("par2").value)
   data.append("par3", document.getElementById("par3").value)
    par1 = document.getElementById("par1").value;
    par2 = document.getElementById("par2").value;
    par3 = document.getElementById("par3").value;
    console.log("par1", par1, "par2", par2, "par3", par3)
    fetch('/counting', {
       method: 'POST',
       body: data
    }).then(data => console.log(data));
   }
  </script>
 </head>
 <body>
 <form onsubmit="return false" oninput="level1.value = par1.valueAsNumber">
 <input name="par1" id="par1" type="range" min="1" max="100" value="100">
 <output for="flying1" name="level1">100</output>
 </form>
 <form onsubmit="return false" oninput="level.value = par2.valueAsNumber">
  <input name="par2" id="par2" type="range" min="1" max="100" value="100">
  <output for="flying" name="level">100</output>
  </form>
  <form onsubmit="return false" oninput="level.value = par3.valueAsNumber">
   <input name="par3" id="par3" type="range" min="1" max="100" value="100">
   <output for="flying" name="level">100</output>
   </form>
  <button id="send" onclick="sizePic()">Отправить</button>
 </body>
</html>