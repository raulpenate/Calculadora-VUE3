<template>
  <HelloWorld msg="Welcome to Your Vue.js App"/>
  <Calculator/>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
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
}
</style>
