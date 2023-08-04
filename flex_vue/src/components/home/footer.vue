<template>
  <footer>
    <div class="container">
      <div class="footer-container">
        <div>
          <h3>關於flex</h3>
          <ul>
            <li><a href="javascript:;">最新消息</a></li>
            <li><a href="javascript:;">人才招募</a></li>
            <li><a href="javascript:;">門市資訊</a></li>
          </ul>
        </div>
        <div>
          <h3>售後與工作室服務</h3>
          <ul>
            <li><a href="javascript:;">售後服務說明</a></li>
            <li><a href="javascript:;">客服服務</a></li>
            <li><a href="javascript:;">客製化服務</a></li>
          </ul>
        </div>
        <div class="me-auto">
          <h3>俱樂部</h3>
          <ul>
            <li><a href="javascript:;">活動與課程</a></li>
          </ul>
        </div>
        <div class="social-network-wrapper">
          <h3>社群網站</h3>
          <ul>
            <li>
              <a href="javascript:;"><i class="fa-brands fa-twitter"></i></a>
            </li>
            <li>
              <a href="javascript:;"><i class="fa-brands fa-facebook-f"></i></a>
            </li>
            <li>
              <a href="javascript:;"><i class="fa-brands fa-line"></i></a>
            </li>
            <li>
              <a href="javascript:;"><i class="fa-brands fa-instagram"></i></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="footer-footer">
        <div>2023 Flex 版權所有</div>
        <ul>
          <li><a href="javascript:;">銷售條款</a></li>
          <li><a href="javascript:;">使用條款</a></li>
          <li><a href="javascript:;">Flex 隱私權政策</a></li>
        </ul>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts"></script>

<style lang="scss">
footer {
  margin-top: 80px;
  background-color: #111111;
  padding: 40px 0;
  position: absolute;
  bottom: 0;
  width: 100%;

  .container {
    .footer-h3 {
      color: #fff;
      font-size: 25px;
    }

    .footer-container {
      display: flex;

      div {
        &:not(:last-child) {
          margin-right: 100px;
        }

        h3 {
          @extend .footer-h3;
        }

        ul {
          padding: 0;

          li {
            margin-top: 15px;
            font-size: 16px;

            a {
              color: #7e7e7e;

              &:hover {
                color: #fff;
              }
            }
          }
        }
      }

      .social-network-wrapper {
        h3 {
          @extend .footer-h3;
          text-align: center;
        }

        ul {
          display: flex;
          justify-content: center;
          width: 100%;

          li {
            &:not(:first-child) {
              margin-left: 10px;
            }

            a {
              color: #111111;
              display: flex;
              justify-content: center;
              align-items: center;
              font-size: 22px;
              width: 40px;
              height: 40px;
              background-color: #7e7e7e;
              border-radius: 50%;
              transition: 0.3s;

              &:hover {
                background-color: #fff;
              }
            }
          }
        }
      }
    }

    .footer-footer {
      display: flex;
      margin-top: 50px;
      justify-content: center;

      div {
        color: #7e7e7e;
        margin-right: 30px;
      }

      ul {
        display: flex;

        li {
          &:not(:first-child) {
            margin-left: 20px;
          }

          a {
            color: #7e7e7e;
          }
        }
      }
    }
  }
}
</style>
