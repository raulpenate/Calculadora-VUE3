<template>
  <Calculator />
</template>

<script>
import Calculator from "./components/Calculator.vue";

export default {
  name: "App",
  components: {
    Calculator,
  },
};
</script>

<style>
body {
  background: linear-gradient(#d4d4d2, red);
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  display: flex;
  align-items: center;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
</style>
