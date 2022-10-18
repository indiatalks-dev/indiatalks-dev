<script setup>
import {onMounted} from "vue";

defineProps({
  text_1: {
    type: String,
    required: true,
  },
  text_2: {
    type: String,
    required: true,
  }
});

const topics = {
  0 : '.Dev',
  1 : 'Tech',
  2 : 'Code',
  3 : 'AI/ML',
  4 : 'Future',
  5 : 'DevOps',
  6 : 'CI/CD',
  7 : 'Fast',
  8 : 'Growth',
  9 : 'Secure',
  10 : '.Dev'
};

const topic_span_height_in_rem = 3.5;

let kf_css = 'div.india_talks span {\n' +
    '  animation-name: topics;\n' +
    '  animation-delay: 2s;\n' +
    '  animation-duration: 15s;\n' +
    '  animation-timing-function: ease-in-out;\n' +
    '  animation-iteration-count: infinite;\n' +
    '}\n' +
    '@keyframes topics {';

const topics_length = Object.keys(topics).length;
let max_percentage = 85;
let diff_percentage = Math.round(max_percentage/topics_length);
let kf_percentage = 0;

for (let i = 0; i < topics_length; i++) {
  kf_css += `
    ${kf_percentage}% {
      transform: translateY( calc( -1 * (${topic_span_height_in_rem} * ${i}) * 1rem ) );
      opacity: 100%;
  }
  `;
  kf_percentage += diff_percentage;
  kf_css += `
    ${kf_percentage-(diff_percentage/2)}% {
      opacity: 100%;
  }
  `;
}
kf_css += `
    100% {
      transform: translateY( calc( -1 * (${topic_span_height_in_rem} * ${topics_length-1}) * 1rem ) );
  }`;

kf_css += '\n}';

onMounted(() => {
  let style = document.createElement('style');
  style.innerHTML = kf_css;
  document.head.appendChild(style);
});

</script>

<template>
  <div class="flex justify-center bg-gray-800 py-4">
    <div
      class="text-5xl my-2 py-0 w-[50rem] bg-gray-800 rounded-md flex flex-col items-center justify-center"
    >
      <div class="w-[25rem] text-center border-px border-red-500 h-14">
        <span class="text-orange-500">{{ text_1 }} </span>
        <span class="pl-1 text-gray-300"> {{ text_2 }} </span>
      </div>
      <div
        class="india_talks text-center mt-4 pl-2 text-green-500 w-[20rem] border-px border-green-500 overflow-hidden text-left flex flex-col gap-y-2 h-14"
      >
        <span v-for="(topic, key) in topics" :key="key"> {{ topic}} </span>
      </div>
    </div>
  </div>
</template>
