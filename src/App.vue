<script setup>
import IndiaTalks from "./components/IndiaTalks.vue";
</script>

<template>
  <div class="min-h-screen flex flex-col justify-between">
    <header class="text-center">
      <img
        alt="India Talks Dev"
        title="India Talks Dev"
        class="mx-auto w-36 my-10"
        src="/public/favicon.png"
      />

      <div>
        <IndiaTalks msg="India" msg2="Talks" />
      </div>
    </header>
    <footer class="text-center mb-4">
      By developers who love to talk
    </footer>
  </div>
</template>
