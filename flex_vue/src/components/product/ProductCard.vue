<template>
  <div class="img">
    <!-- <router-link to="/detail/123"> -->
    <img
      :src="imgBaseUrl + 'Public/Img/' + card.firstImgPath"
      class="card-img-top mx-auto d-block"
      :title="card.productName"
    />
    <!-- </router-link> -->
  </div>
  <div class="card-body">
    <P class="card-title">{{ card.productName }}</P>
    <span class="text-decoration-line-through" v-if="card.unitPrice != null">
      NT:{{ card.unitPrice }}
    </span>
    <span v-if="card.unitPrice != null"> 活動價 </span>
    <span v-bind:class="{ 'text-red': card.unitPrice != null }">
      NT:{{ card.salesPrice }}
    </span>
  </div>
</template>

<script setup>
import { computed, ref } from "vue";

const props = defineProps(["card"]);
const card = computed(() => props.card);
const imgBaseUrl = ref(import.meta.env.VITE_API_BASEADDRESS);
</script>

<style>
.card .img {
  min-height: 250px;
  max-height: 250px;
  width: 220px;
  overflow: hidden;
}

.card img {
  transition: transform 1s;
}

.card img:hover {
  transform: scale(1.2);
}

.card {
  overflow: hidden;
  margin-bottom: 35px;
  margin-right: 35px;
  padding: 0;
  border: none;
  height: 350px;
  width: 220px;
}

.nav-category {
  width: 165px;
}

.container-body {
  width: 1080px;
}

.text-red {
  color: red;
}
</style>
