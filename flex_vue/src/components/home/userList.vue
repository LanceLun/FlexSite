<template>
  <div class="list">
    <div class="box">
      <ul class="userList-items">
        <li class="mb-1"><a href="http://localhost:5175/user">個人資料</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1"><a href="javascript:;">訂單查詢/申請退貨</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1"><a href="javascript:;">收藏清單/購買清單</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1"><a href="javascript:;">積分中心</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1"><a href="javascript:;">優惠券</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1"><a href="javascript:;">瀏覽紀錄</a></li>
        <span class="line mb-3"></span>

        <li class="mb-1 mb-3"><a href="javascript:;">購物車</a></li>

        <button class="logout" type="submit">登出</button>
      </ul>
    </div>
  </div>
</template>

<script setup></script>

<style>
.list {
  width: 13%;
  /* background-color: blue; */
  z-index: 9999; /* 設置較大的 z-index 值 */
  margin-left: 70%;
  border: solid 2px;
  display: flex;
  justify-content: center;
  /* display: none; */
}
.box {
  /* background-color: yellow; */
  padding-top: 10px;
  padding-bottom: 10px;
}
.userList-items {
  padding: 0;
  margin: 0;
  list-style: none; /* 移除點點符號 */
}
.line {
  border-bottom: 1px solid #ccc; /* 設置橫線寬度和顏色 */
  display: block; /* 將 span 設置為 block 元素，使其佔據整行寬度 */
  background-color: black;
}
.logout {
  width: 200px;
  border: solid 1px;
}
.logout:hover {
  background-color: black;
  color: white;
}
</style>
