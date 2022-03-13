<template>
  <div class="carcasa">
    <div class="pantalla">
        <input type="number" name="numero" class="pantallainterna">
    </div>
    <div class="fila inicio">
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
    <div class="fila final">
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
    margin: auto 40%;
}

.carcasa{
    background: #1C1C1C;
    display: flex;
    flex-flow: wrap;
    justify-content: space-between;
    border-radius: 5%;
}

.fila{
    width: 100%;
    font-weight: bold;
    display: flex;
    flex-flow: wrap row;
    justify-content: space-evenly;
    margin: 2%;
}

.boton{
    background: #505050;
    color: #FFFFFF;
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

.orange{
    background:#FF9500;
}

.boton:hover{
    background: rgba(255,255,255, 0.4);
}

.orange:hover{
    background: rgba(247, 127, 72, 0.9);
}

.inicio{
    margin-top: 8%;
}

.final{
    margin-bottom: 8%;
}
</style>