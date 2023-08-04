<template>
  <header>
    <div class="container d-flex h-100">
      <div class="me-auto"></div>
      <ul>
        <li><a href="javascript:;">說明</a></li>
        <li><a href="javascript:;">加入</a></li>
        <li><a href="javascript:;">登入</a></li>
      </ul>
    </div>
  </header>

  <nav>
    <div class="container">
      <div class="left">
        <router-link to="/" class="logo-wrapper"
          ><img src="" alt="" />
          <h1>FLEX</h1></router-link
        >
      </div>
      <div class="center">
        <ul>
          <li>
            <div class="nav-list-item">
              <div>Men</div>
              <div><router-link to="/men">男款</router-link></div>
            </div>
          </li>
          <li>
            <div class="nav-list-item">
              <div>Women</div>
              <div>女款</div>
            </div>
          </li>
          <li>
            <div class="nav-list-item">
              <div>Kid</div>
              <div>兒童款</div>
            </div>
          </li>
          <li>
            <div class="nav-list-item">
              <div>Sale</div>
              <div>特惠</div>
            </div>
          </li>
        </ul>
      </div>
      <div class="right">
        <div class="search-wrapper d-flex">
          <input type="search" class="search-bar" placeholder="搜尋" />
          <i class="bi bi-search"></i>
        </div>
        <i class="bi bi-heart"></i>
        <i class="bi bi-bag"></i>
      </div>
    </div>
  </nav>
</template>

<script setup lang="ts"></script>

<style lang="scss">
@mixin reset-styles {
  padding: 0;
  margin: 0;
  color: #333;

  a {
    text-decoration: none;
    color: #333;
  }

  ul {
    li {
      list-style: none;
    }
  }
}

$header-height: 36px;
$nav-height: 70px;
$bg-gray: #f5f5f5;

.text-link {
  &:hover {
    color: #888;
  }
}

* {
  @include reset-styles;
}

body {
  min-height: 100vh;
  padding-bottom: 348px;
  position: relative;
  width: 100vw;
  overflow-x: hidden;
}

header {
  background-color: #f5f5f5;
  height: $header-height;

  div {
    display: flex;
    height: 100%;

    ul {
      display: flex;
      align-items: center;
      height: 100%;

      li {
        list-style: none;
        font-size: 14px;
        height: 100%;

        a {
          @extend .text-link;
          display: inline-block;
          height: 100%;
          line-height: $header-height;
        }

        &:not(:first-child)::before {
          content: "|";
          padding: 0 15px;
          font-size: 14px;
        }
      }
    }
  }
}

.nav-height {
  height: $nav-height;
}

nav {
  @extend .nav-height;
  background-color: #fff;

  .container {
    position: relative;

    .left,
    .center,
    .right {
      @extend .nav-height;
      position: absolute;
    }

    .left {
      @extend .nav-height;
      position: absolute;

      .logo-wrapper {
        @extend .nav-height;
        width: 60px;
        display: flex;
        align-items: center;

        &:hover {
          h1 {
            color: #777;
          }
        }

        h1 {
          line-height: $nav-height;
          font-weight: bold;
        }
      }
    }

    .center {
      left: 50%;
      transform: translate(-50%);

      ul {
        display: flex;
        height: 100%;

        li {
          height: 100%;
          cursor: pointer;
          overflow-y: hidden;
          font-size: 22px;
          position: relative;
          width: 100px;
          display: flex;
          justify-content: center;

          .nav-list-item {
            height: 200%;
            position: absolute;
            top: 0;
            transition: 0.3s;

            div {
              display: flex;
              height: 50%;
              align-items: center;
              justify-content: center;
            }
          }

          &:hover {
            border-bottom: 3px solid black;

            .nav-list-item {
              top: -100%;
            }
          }
        }
      }
    }

    .right {
      right: 0;
      display: flex;
      align-items: center;

      .nav-icon {
        font-size: 18px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50px;
        width: 38px;
        height: 38px;
        cursor: pointer;
      }

      .search-wrapper {
        position: relative;

        .search-bar {
          background-color: $bg-gray;
          padding: 10px 10px 10px 50px;
          border-radius: 50px;
          border: none;
          width: 180px;
          height: 45px;
          font-size: 18px;

          &:hover {
            background-color: #dfdfdf;
          }

          &:focus {
            outline: none;
          }
        }

        .bi-search {
          @extend .nav-icon;
          position: absolute;
          left: 4px;
          top: 4px;

          &:hover {
            background-color: #dfdfdf;
          }
        }
      }

      .bi-heart {
        @extend .nav-icon;
        margin-left: 10px;

        &:hover {
          background-color: #dfdfdf;
        }
      }

      .bi-bag {
        @extend .nav-icon;
        margin-left: 10px;

        &:hover {
          background-color: #dfdfdf;
        }
      }
    }
  }
}
</style>
