<template>
  <div class="container">
    <div class="carcasa">
      <div class="pantalla">
        <div class="datosanteriores"><label class="">123</label></div>
        <input class="pantallainterna" type="number" name="numero" value=""/>
      </div>
      <div class="fila">
        <div class="boton gris">AC</div>
        <div class="boton gris">+/-</div>
        <div class="boton gris">%</div>
        <div class="boton orange">/</div>
      </div>
      <div class="fila">
        <div class="boton">7</div>
        <div class="boton">8</div>
        <div class="boton">9</div>
        <div class="boton orange">x</div>
      </div>
      <div class="fila">
        <div class="boton">4</div>
        <div class="boton">5</div>
        <div class="boton">6</div>
        <div class="boton orange">-</div>
      </div>
      <div class="fila">
        <div class="boton">1</div>
        <div class="boton">2</div>
        <div class="boton">3</div>
        <div class="boton orange">+</div>
      </div>
      <div class="fila final">
        <div class="boton grande">0</div>
        <div class="boton">.</div>
        <div class="boton orange">=</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  background: #c4c4c4;
}

/* CARCASA */

.carcasa {
  background: #1c1c1c;
  display: flex;
  flex-flow: wrap;
  justify-content: space-between;
  border-radius: 30px;
  max-width: 350px;
}

/* PANTALLA */

.pantalla {
  padding: 5%;
  display: flex;
  flex-wrap: wrap;
  align-content: stretch;
  width: 100%;
}

.pantallainterna {
  display: inline-block;
  position: relative;
  width: 100%;
  background: #1c1c1c;
  color: #ffffff;
  outline: none;
  border: none;
  text-align: right;
  font-size: 8vh;
}

input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

.datosanteriores {
  font-size: 3vh;
  width: 100%;
  color: #fff;
  text-align: right;
}

/* BOTONES */

.fila {
  width: 100%;
  font-weight: bold;
  display: flex;
  flex-flow: wrap row;
  justify-content: space-evenly;
  margin: 2%;
}

.boton {
  background: #505050;
  color: #ffffff;
  width: 20px;
  height: 20px;
  position: relative;
  font-size: 4vh;
  padding: 10%;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  margin: 1%;
}

.orange {
  background: #ff9500;
}

.gris {
  background: #d4d4d2;
  color: #000;
}

.boton:hover {
  background: rgba(255, 255, 255, 0.4);
}

.orange:hover {
  background: rgba(247, 127, 72, 0.9);
}

.inicio {
  margin-top: 1%;
}

.final {
  margin-bottom: 8%;
}

.grande {
  flex-grow: 0.7;
  border-radius: 50px;
  display: flex;
  justify-content: start;
}
</style>