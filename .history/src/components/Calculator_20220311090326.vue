<template>
  <div class="carcasa">
    <div class="pantalla"></div>
    <div class="fila">
        <div class="boton">7</div>
        <div class="boton">8</div>
        <div class="boton">9</div>
        <div class="boton orange">/</div>
    </div>
    <div class="fila">
        <div class="boton">4</div>
        <div class="boton">5</div>
        <div class="boton">6</div>
        <div class="boton orange">x</div>
    </div>
    <div class="fila">
        <div class="boton">1</div>
        <div class="boton">2</div>
        <div class="boton">3</div>
        <div class="boton orange">-</div>
    </div>
    <div class="fila">
        <div class="boton">0</div>
        <div class="boton">.</div>
        <div class="boton">=</div>
        <div class="boton orange">+</div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body{
    background: #c4c4c4;
    margin: auto 30%;
}

.carcasa{
    background: #1C1C1C;
    display: flex;
    flex-flow: wrap column;
    justify-content: space-between;
    border-radius: 5%;
}

.fila{
    font-weight: bold;
    display: flex;
    flex-flow: wrap row;
    justify-content: space-evenly;
    margin: 1%;
}

.boton{
    background: #505050;
    color: #FFFFFF;
    width: 90px;
    height: 90px;
    position: relative;
    font-size: 4vh;
    padding: 10%;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
}

.orange{
    background: #000;
}

</style>