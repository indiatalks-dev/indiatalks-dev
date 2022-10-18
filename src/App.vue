<script>
import IndiaTalks from "./components/IndiaTalks.vue";
import Laravel from "./components/Laravel.vue";

export default {
  components: {
    IndiaTalks,
    Laravel,
  },
};
</script>

<template>
  <div class="min-h-screen flex flex-col justify-between">
    <header class="text-center">
      <img
        alt="India Talks Dev"
        title="India Talks Dev"
        class="mx-auto w-36 my-10"
        src="/favicon.png"
      />

      <div>
        <IndiaTalks text_1="India" text_2="Talks"/>
      </div>
    </header>
    <footer class="text-center mb-4">
      <div>By developers who love to talk</div>
      <laravel></laravel>
    </footer>
  </div>
</template>
