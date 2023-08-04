import { createRouter, createWebHistory } from "vue-router";
import Home from '../views/Home.vue'
import User from '../views/User.vue'
// 路由設定
const routes = [
  {
    //http://loaclhost/
    path: '/',
    component: Home
  },
  {
    //http://loaclhost/User
    path: '/user',
    component: User
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes: routes
  //  變數名稱跟屬性名稱一樣可直接省略成 routes
});

export default router;