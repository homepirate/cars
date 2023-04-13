<!DOCTYPE html>
<html>
 <head>
  <link href="style.css" rel="stylesheet" type="text/css">
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
 <div>
  <table>
   <tr>
    <th></th>
    <th><p>Объем двигателя</p></th>
    <th><p>Колличество лощадиных сил</p></th>
    <th><p>Объем багажника</p></th>
   </tr>
   <tr>
    <td><p><label>Введите ..</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Введите ..</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Введите ..</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p></p></td>
    <td><p><input type="range" min="1" max="100" id="par1"></p></td>
    <td><p><input type="range" min="1" max="100" id="par2"></p></td>
    <td><p><input type="range" min="1" max="100" id="par3"></p></td>
   </tr>
  </table>


  <button id="send" onclick="sizePic()">Отправить</button>
 </div>
 </body>
</html>