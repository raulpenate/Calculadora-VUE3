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
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translateY(-50%, -50%);
  transform: translateY(-50%, -50%);
}
</style>
