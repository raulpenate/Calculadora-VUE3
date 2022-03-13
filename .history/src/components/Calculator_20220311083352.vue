<template>
  <div class="carcasa">
    <div class="pantalla"></div>
    <div class="fila">
        <div class="boton">7</div>
        <div class="boton">8</div>
        <div class="boton">9</div>
        <div class="boton">/</div>
    </div>
    <div class="fila">
        <div class="boton">4</div>
        <div class="boton">5</div>
        <div class="boton">6</div>
        <div class="boton">x</div>
    </div>
    <div class="fila">
        <div class="boton">1</div>
        <div class="boton">2</div>
        <div class="boton">3</div>
        <div class="boton">-</div>
    </div>
    <div class="fila">
        <div class="boton">0</div>
        <div class="boton">.</div>
        <div class="boton">=</div>
        <div class="boton">+</div>
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
    background: rgb(233, 207, 207);
    display: flex;
    flex-flow: wrap column;
}

.fila{
    font-weight: bold;

    display: flex;
    flex-flow: wrap row;
}

.boton{
    outline: 1px solid #fff;
    padding: 10%;
}


</style>