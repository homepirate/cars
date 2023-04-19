<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <link href="style.css" rel="stylesheet">
  <title>ПОДБОР АВТОМОБИЛЯ</title>
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
 <div id="header">ПОДБОР АВТОМОБИЛЯ</div>
 <div>
  <p></p>
  <table>
   <tr>
    <th></th>
    <th><p>Объем двигателя</p></th>
    <th><p>Колличество лощадиных сил</p></th>
    <th><p>Объем багажника</p></th>
   </tr>
   <tr>
    <td><p><label>Отечественный автомобиль</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Европейский автомобиль</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Китайский автомобиль</label></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p></p></td>
    <td><form onsubmit="return false" oninput="level1.value = par1.valueAsNumber">
            <input class="range" name="par1" id="par1" type="range" min="1" max="100" value="100">
            <output for="flying1" name="level1">100</output>
            </form></td>
    <td><form onsubmit="return false" oninput="level.value = par2.valueAsNumber">
          <input class="range" name="par2" id="par2" type="range" min="1" max="100" value="100">
          <output for="flying" name="level">100</output>
          </form></td>
    <td>  <form onsubmit="return false" oninput="level.value = par3.valueAsNumber">
           <input class="range" name="par3" id="par3" type="range" min="1" max="100" value="100">
           <output for="flying" name="level">100</output>
           </form></td>
   </tr>
  </table>

  <button id="send" onclick="sizePic()">Отправить</button>
 </div>
 <p></p>
 <footer>
  <div class="footer">
   <div class="row">
   </div>

   <div class="row">
    <ul>
     <li><a href="#">Contact us</a></li>
     <li><a href="#">Terms & Conditions</a></li>
     <li><a href="#">Donat</a></li>
    </ul>
   </div>

   <div class="row">
    INFERNO Copyright © 2023 Inferno - All rights reserved || Designed By: Narrow VEE
   </div>
  </div>
 </footer>
 </body>
</html>