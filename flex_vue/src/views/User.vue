<template>
  <navBar></navBar>

  <div class="container">
    <div>
      <h2>會員資料修改</h2>
    </div>

    <div class="d-flex">
      <div class="input-group mb-3">
        <label for="nameInput" class="text">姓名</label>
        <label for="">{{ name }}</label>
      </div>
      <div class="aaa mb-3">
        <label class="text">會員等級</label>
        <label for="">{{ level }}</label>
      </div>
    </div>

    <div class="input-group mb-3">
      <label for="emailInput" class="text">信箱</label>
      <input
        type="text"
        class="form-control"
        id="emailInput"
        placeholder="email"
        v-model="email"
      />
    </div>

    <div class="input-group mb-3">
      <label for="mobileInput" class="text">手機</label>
      <input
        type="text"
        class="form-control"
        placeholder="mobile"
        v-model="mobile"
      />
    </div>

    <div class="row mb-3">
      <div class="clo">
        <label class="text">性別</label>

        <div class="gender">
          <div class="form-check">
            <input
              class="form-check-input"
              type="radio"
              name="genderRadio"
              id="genderRadio1"
            />
            <label class="form-check-label" for="genderRadio1"> 生理男 </label>
          </div>
        </div>
      </div>

      <div class="clo">
        <div class="form-check">
          <input
            class="form-check-input"
            type="radio"
            name="genderRadio"
            id="genderRadio2"
            checked
          />
          <label class="form-check-label" for="genderRadio2"> 生理女 </label>
        </div>
      </div>
    </div>
    <div class="d-flex">
      <div class="input-group mb-3">
        <label for="addressInput" class="text">地址</label>
        <input
          type="text"
          class="form-control"
          id="addressInput"
          placeholder="common address"
          v-model="commonAddress"
        />
      </div>
      <div class="addAddress">
        <button type="button" class="btn btn-primary text-black">+</button>
      </div>
    </div>
    <div class="input-group mb-3">
      <input type="text" class="form-control" placeholder="載具先不寫" />
    </div>

    <div class="input-group mb-3">
      <input type="text" class="form-control" placeholder="取貨店鋪預約" />
    </div>

    <label class="text mb-3">訂閱電子報</label>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" id="subscribeBtn" />
      <label class="form-check-label" for="subscribeBtn">是否訂閱電子報</label>
    </div>
    <div>
      <button type="button" class="btn btn-outline-primary text-black">
        送出
      </button>
    </div>
  </div>
</template>

<script setup>
import navBar from '../components/home/navBar.vue';
import { ref } from 'vue';
import axios from 'axios';

const userProfile = ref([]);
const account = ref('a123'); // 初始化為空字符串
let id = ref('');
let level = ref('');
let name = ref('');
let email = ref('');
let mobile = ref('');
let gender = ref('');
let commonAddress = ref('');

const baseAddress = 'https://localhost:7183/api';
const uri = `${baseAddress}/Users/${account.value}`;

axios
  .get(uri)
  .then((res) => {
    // userProfile.value = res.data;
    // console.log(userProfile);

    id.value = res.data.memberId;
    //console.log(id);

    level.value = res.data.fk_LevelId;
    name.value = res.data.name;
    email.value = res.data.email;
    mobile.value = res.data.mobile;
    gender.value = res.data.gender;
    commonAddress.value = res.data.commonAddress;
    // console.log(level);
  })
  .catch((err) => {
    err;
  });
</script>

<style>
.container {
  width: 30%;
  margin-left: 10%;
}
.gender {
  display: flex;
}
.text {
  padding-right: 10px;
  font-size: 18px;
}
.addAddress {
  padding-left: 20px;
}
.aaa {
  width: 30%;
  background-color: #fce0d9;
  border-radius: 10px;
  border: solid 1px #bb3e20;
}
</style>
