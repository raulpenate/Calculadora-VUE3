<template>
  <div class="carcasa">
    <div class="pantalla">
      <div class="datosanteriores">
        <label class="">{{ pantallasuperior }}</label>
      </div>
      <input
        v-model="pantallainterna"
        class="pantallainterna"
        type="text"
        name="numero"
        pattern="\d"
        readonly
      />
    </div>
    <div class="fila">
      <div @click="reset" class="boton gris">AC</div>
      <div @click="invertirSigno" class="boton gris">+/-</div>
      <div @click="porcentaje" class="boton gris">%</div>
      <div @click="dividir" class="boton orange">÷</div>
    </div>
    <div class="fila">
      <div @click="agregarNumero('7')" class="boton">7</div>
      <div @click="agregarNumero('8')" class="boton">8</div>
      <div @click="agregarNumero('9')" class="boton">9</div>
      <div @click="multiplicar" class="boton orange">x</div>
    </div>
    <div class="fila">
      <div @click="agregarNumero('4')" class="boton">4</div>
      <div @click="agregarNumero('5')" class="boton">5</div>
      <div @click="agregarNumero('6')" class="boton">6</div>
      <div @click="restar" class="boton orange">-</div>
    </div>
    <div class="fila">
      <div @click="agregarNumero('1')" class="boton">1</div>
      <div @click="agregarNumero('2')" class="boton">2</div>
      <div @click="agregarNumero('3')" class="boton">3</div>
      <div @click="sumar" class="boton orange">+</div>
    </div>
    <div class="fila final">
      <div @click="agregarCero" class="boton grande">0</div>
      <div @click="agregarPunto" class="boton">.</div>
      <div @click="igual" class="boton orange">=</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Calculator",
  props: {
    numero: Number,
  },
  data() {
    return {
      pantallainterna: this.numero,
      pantallasuperior: this.numero,
    };
  },
  methods: {
    agregarNumero(valor) {
      if (!this.pantallainterna) {
        this.pantallainterna = valor;
      } else {
        this.pantallainterna += valor;
      }
    },
    agregarCero() {
      if (!this.pantallainterna) {
        this.pantallainterna = "0";
      } else {
        this.pantallainterna += "0";
      }
    },
    agregarPunto() {
      if (this.pantallainterna.search(/\./g) == -1) {
        this.pantallainterna += ".";
      }
    },
    reset() {
      this.pantallainterna = null;
      this.pantallasuperior = null;
    },
    porcentaje() {
      this.pantallainterna = this.pantallainterna * 0.01;
    },
    invertirSigno() {
      if(this.pantallainterna > 0){
        this.pantallainterna = this.pantallainterna - (this.pantallainterna * 2);
      }else{
        this.pantallainterna = Math.abs(this.pantallainterna);
      }
    },
    sumar() {
      if (!!this.pantallainterna && !!this.pantallasuperior) {
        this.igual();
      }
      if (!!this.pantallainterna) {
        this.pantallasuperior = `+ ${this.pantallainterna}`;
        this.pantallainterna = "";
      }
    },
    restar() {
      if (!!this.pantallainterna && !!this.pantallasuperior) {
        this.igual();
      }
      if (!!this.pantallainterna) {
        this.pantallasuperior = `- ${this.pantallainterna}`;
        this.pantallainterna = "";
      }
    },
    multiplicar() {
      if (!!this.pantallainterna && !!this.pantallasuperior) {
        this.igual();
      }
      if (!!this.pantallainterna) {
        this.pantallasuperior = `x ${this.pantallainterna}`;
        this.pantallainterna = "";
      }
    },
    dividir() {
      if (!!this.pantallainterna && !!this.pantallasuperior) {
        this.igual();
      }
      if (!!this.pantallainterna) {
        this.pantallasuperior = `÷ ${this.pantallainterna}`;
        this.pantallainterna = "";
      }
    },
    igual() {
      let primerTermino = parseFloat(this.pantallainterna);
      //REGEX To replace any, ^ start with x, -, /,  + simbol, \s for a space, gm global multiline with ''
      let segundoTermino = parseFloat(
        this.pantallasuperior.replace(/^(\x|\-|\÷|\+)\s/gm, "")
      );
      let signo = this.pantallasuperior.slice(0, 1);
      this.pantallasuperior = null;
      this.pantallainterna = this.hacerOperacion(
        primerTermino,
        segundoTermino,
        signo
      );
    },
    hacerOperacion(primerTermino, segundoTermino, signo) {
      return signo == "+"
        ? segundoTermino + primerTermino
        : signo == "-"
        ? segundoTermino - primerTermino
        : signo == "x"
        ? segundoTermino * primerTermino
        : signo == "÷"
        ? segundoTermino / primerTermino
        : "NaN";
    },
  },
};
</script>

<style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  background: linear-gradient(#c4c4c4, #8b2626);
  margin: auto 30%;
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
  height: 3vh;
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

.datosanteriores {
  font-size: 3vh;
  height: 3vh;
}

/* RESPONSIVE */

@media screen and (max-width: 500px) {
  body {
    margin: auto 10%;
  }

  .carcasa {
    min-width: 270px;
  }

  .boton {
    font-size: 3vh;
  }

  .pantallainterna {
    font-size: 6vh;
  }
}
</style>