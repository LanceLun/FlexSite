<template>
  <ul class="d-flex flex-wrap">
    <li v-for="card in cards" :key="card.productId" class="card text-center">
      <ProductCard :card="card"></ProductCard>
    </li>
  </ul>
</template>

<script setup>
import ProductCard from "../../components/product/ProductCard.vue";
import axios from "axios";
import { onMounted, ref } from "vue";

const api_BASEADDRESS = import.meta.env.VITE_API_BASEADDRESS;

var cards = ref([]);

let loadProducts = async () => {
  await axios
    .post(`${api_BASEADDRESS}api/Products/Men`)
    .then((response) => {
      //console.log(response.data);
      cards.value = response.data;
    })
    .catch((error) => {
      alert(error);
    });
};

// let loadProducts = async () => {
//   await axios
//     .post(`${api_BASEADDRESS}api/Products/Men`)
//     .then((response) => {
//       //console.log(response.data);
//       cards.value = response.data;
//     })
//     .catch((error) => {
//       alert(error);
//     });
// };

onMounted(() => {
  loadProducts();
});

// export default{
//     data() {
//         return {
//             cards: [],
//             //categories: [],
//         };
//     },
//     mounted() {
//         this.filterProducts();
//         //this.getCategory();
//     },
//     methods: {
//         filterProducts: function () {
//                 let _this = this;
//                 //var request = {};

//                 axios.post(`${baseAddress}api/Products/Men`).then(response => {
//                     console.log(JSON.stringify(response.data));
//                     //_this.cards = response.data;
//                 }).catch(error => {
//                     alert(error);
//                 });
//         },

//         // getCategory() {
//         // // 和之前的程式碼保持一致
//         // },
//     },

//     components:{
//         ProductCardVue,
//     }
// }
</script>

<style></style>
