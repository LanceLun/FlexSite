<template>
  <navBar></navBar>
  <main>
    <div class="text-carousel-container">
      <div class="text-carousel">
        <div class="text-carousel-items">
          <div class="text-carousel-title">免費寄送</div>
          <div class="text-carousel-body">適用於 NT$1,000 以上的訂單。</div>
        </div>
        <div class="text-carousel-items">
          <div class="text-carousel-title">反詐騙提醒</div>
          <div class="text-carousel-body">
            FLEX絕不會在電話中要求您提供信用卡資訊、ATM操作款、或儲值,請您提高警覺。
          </div>
        </div>
      </div>
    </div>
    <div class="container main-area mb-3">
      <a href="javascript:;" class="home-row">
        <div class="video-container">
          <video
            src="../../public/videos/pexels-cottonbro-5275266 (2160p).mp4"
            muted
            autoplay
            loop
            controls="false"
          ></video>
        </div>
        <div class="home-card">
          <div class="home-card-title">
            <p>舉手投足,</p>
            <p>　暢動自如</p>
          </div>
          <div class="home-card-body">
            無論今天或明天將面對什麼訓練挑戰,這些必備款式讓你輕鬆應對每個動作。
          </div>
        </div>
      </a>
      <div class="home-row">
        <div class="home-row-title">
          <h3>引領潮流</h3>
        </div>
        <div class="row row-cols-2 gx-3">
          <a href="javascript:;" class="img-wrapper col">
            <img src="../../public/imgs/pexels-luis-zambrano-17570085.jpg" />
            <div class="img-text">男款</div>
          </a>
          <a href="#" class="img-wrapper col">
            <img src="../../public/imgs/pexels-daniel-duarte-17122658.jpg" />
            <div class="img-text">女款</div>
          </a>
        </div>
      </div>
      <div class="home-row">
        <div class="home-row-title">
          <h3>必備經典</h3>
          <div class="btn-wrapper">
            <a href="javascript:;">選購</a>
            <button disabled><i class="bi bi-chevron-left"></i></button>
            <button><i class="bi bi-chevron-right"></i></button>
          </div>
        </div>
        <div class="home-product-list">
          <div class="home-product-list-items">
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
            <a href="javascript:;" class="img-wrapper">
              <img
                src="../../public/imgs/LINE_ALBUM_2023.07.17 服飾的商品底圖_230731_1.jpg"
              />
            </a>
          </div>
        </div>
      </div>
    </div>
  </main>
  <homeFooter></homeFooter>
</template>

<script setup lang="ts">
import navBar from '../components/home/NavBar.vue';
import homeFooter from '../components/home/footer.vue';
</script>

<style lang="scss">
.text-link {
  &:hover {
    color: #888;
  }
}

main {
  padding-bottom: 120px;

  .text-carousel-container {
    height: 58px;
    width: 100vw;
    background-color: #f5f5f5;
    border-bottom: #ededed;
    overflow: hidden;
    display: flex;
    align-items: center;
    position: relative;

    .text-carousel {
      width: 200vw;
      display: flex;
      position: absolute;
      left: 0;
      transition: 0.3s;

      .text-carousel-items {
        width: 100vw;

        .text-carousel-title {
          text-align: center;
          font-size: 18px;
          font-weight: bold;
        }

        .text-carousel-body {
          text-align: center;
          font-size: 14px;
        }
      }
    }
  }

  .main-area {
    margin-top: 20px;

    .home-row {
      margin-bottom: 40px;

      .video-container {
        display: block;
        width: 100%;
        max-height: 500px;
        position: relative;
        overflow: hidden;

        video {
          width: 100%;
          object-fit: cover;

          &::-webkit-media-controls-panel {
            display: none !important;
            /* Chrome和Safari中隱藏進度條 */
          }

          &::-webkit-media-controls {
            display: none !important;
            /* 在Chrome中隱藏進度條（舊版Chrome） */
          }

          &::-moz-media-controls-panel {
            display: none !important;
            /* 在Firefox中隱藏進度條 */
          }
        }
      }

      .home-card {
        margin-bottom: 20px;

        .home-card-title {
          font-size: 80px;
          font-weight: 500;
          text-align: center;

          p {
            padding: 0;
            margin: 0;

            &:first-child {
              margin-top: 20px;
            }

            &:not(:first-child) {
              margin-top: -40px;
            }
          }
        }

        .home-card-body {
          text-align: center;
          font-weight: 700;
          font-size: 18px;
        }
      }

      .home-row-title {
        display: flex;
        margin-top: 80px;
        margin-bottom: 20px;

        h3 {
          font-size: 25px;
          font-weight: 700;
          margin-right: auto;
        }

        .btn-wrapper {
          display: flex;
          align-items: center;

          & > *:not(:first-child) {
            margin-left: 10px;
          }

          a {
            @extend .text-link;
          }

          button {
            border-radius: 50%;
            border: none;
            width: 50px;
            height: 50px;
            font-size: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
          }
        }
      }

      .home-product-list {
        width: 100%;
        overflow: hidden;
        position: relative;
        min-height: 200px;

        .home-product-list-items {
          display: flex;
          background-color: #888;
          position: absolute;
          left: 0;

          .img-wrapper {
            display: block;
            overflow: hidden;
            position: relative;
            height: 200px;
            width: 300px;

            &:not(:first-child) {
              margin-left: 20px;
            }

            img {
              width: 100%;
              object-fit: cover;
            }
          }
        }
      }

      .img-wrapper {
        display: block;
        overflow: hidden;
        position: relative;

        img {
          width: 100%;
          object-fit: cover;
        }

        .img-text {
          position: absolute;
          bottom: 30px;
          left: 30px;
          color: #fff;
          font-size: 2vw;
          font-weight: 700;
        }
      }
    }
  }
}
</style>
