<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <link href="style.css" rel="stylesheet">
  <title>ПОДБОР АВТОМОБИЛЯ</title>
  <script>
   function sizePic() {
   var data = new FormData();

    par1 = document.getElementById("par1").value;
    par2 = document.getElementById("par2").value;
    par3 = document.getElementById("par3").value;

    data.append("otec", [document.getElementById("otec_dvig").value *  par1 / 100,
    document.getElementById("otec_hp").value * par2 / 100,
    document.getElementById("otec_ob").value * par3 / 100])

    data.append("ev", [document.getElementById("ev_dvig").value * par1 / 100,
        document.getElementById("ev_hp").value * par2 / 100,
        document.getElementById("ev_ob").value * par3 / 100])

    data.append("china", [document.getElementById("china_dvig").value * par1 / 100,
        document.getElementById("china_hp").value * par2 / 100,
        document.getElementById("china_ob").value * par3 / 100])

    console.log("par1", par1, "par2", par2, "par3", par3)
    let response = fetch('/counting', {
       method: 'POST',
       body: data
    }).then(response => response.text())
            .then(data => {
              document.getElementById("winner").innerHTML = data;
            });

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
    <th><p>Объем багажника</p></th>
    <th><p>Колличество лощадиных сил</p></th>
    <th><p>Клиренс</p></th>
   </tr>
   <tr>
    <td><p><label>Отечественный автомобиль</label></p></td>
    <td><p><input id="otec_dvig" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="otec_hp" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="otec_ob" type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Европейский автомобиль</label></p></td>
    <td><p><input id="ev_dvig" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="ev_hp" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="ev_ob" type="text" class="text" placeholder="Введите значение"></p></td>
   </tr>
   <tr>
    <td><p><label>Китайский автомобиль</label></p></td>
    <td><p><input id="china_dvig" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="china_hp" type="text" class="text" placeholder="Введите значение"></p></td>
    <td><p><input id="china_ob" type="text" class="text" placeholder="Введите значение"></p></td>
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
 <div>
 <p id="winner" style="font-size: 2rem; text-decoration: underline;"></p>
 </div>

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