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
  background: rgb(111, 107, 107);
  background: linear-gradient(
    90deg,
    rgba(111, 107, 107, 1) 0%,
    rgba(54, 62, 62, 1) 46%,
    rgba(196, 196, 196, 1) 100%
  );
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
