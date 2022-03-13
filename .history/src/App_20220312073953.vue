<template>
  <Calculator/>
</template>

<script>
import Calculator from './components/Calculator.vue'

export default {
  name: 'App',
  components: {
    Calculator
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
}
</style>
