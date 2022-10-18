<script setup>
import {ref} from "vue";
let laravel_version = ref('');

const data = {"environment": {"laravel_version": ""}};

const laravel_environment = async () => {
  const response = await fetch('http://127.0.0.1:3281/api/v1');
  const data = await response.json();
  laravel_version.value = data.environment.laravel_version;
}
//laravel_environment();
</script>

<template>
  <div v-if="laravel_version">
    Laravel version : {{ laravel_version }}
  </div>
</template>
