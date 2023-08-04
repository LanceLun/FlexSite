// 這邊匯入App.vue的東西
import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router/index'

// 使用vue的時候要使用路由設定
createApp(App).use(router).mount('#app')
