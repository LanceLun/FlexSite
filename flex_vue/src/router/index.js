import { createRouter, createWebHistory } from "vue-router";
<<<<<<< HEAD
import Home from '../views/Home.vue'
import User from '../views/User.vue'
=======
import Home from "../views/home/Home.vue";

>>>>>>> 9ed0c77a9f5e7a38a2ef8e42deb422dfb42b3446
// 路由設定
const routes = [
  {
    //http://loaclhost/
<<<<<<< HEAD
    path: '/',
    component: Home
  },
  {
    //http://loaclhost/User
    path: '/user',
    component: User
  }
]
=======
    path: "/",
    component: Home,
  },
  {
    //http://loaclhost/Men
    path: "/men",
    component: () => import("../views/product/ProductMenLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("../views/product/ProductMen.vue"),
      },
      {
        // 当 /user/:id/posts 匹配成功
        // UserPosts 将被渲染到 User 的 <router-view> 内部
        path: "detail/:prdouctId",
        component: () => import("../views/product/ProductDetail.vue"),
      },
    ],
  },
];
>>>>>>> 9ed0c77a9f5e7a38a2ef8e42deb422dfb42b3446

const router = createRouter({
  history: createWebHistory(),
  routes: routes,
  //  變數名稱跟屬性名稱一樣可直接省略成 routes
});

export default router;
