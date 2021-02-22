<template>
  <el-container style="height: 100vh; ">
      <!-- 头部 -->
    <el-header style="text-align: right; font-size: 12px">
      <h2>
        <span>王者荣耀后台管理系统</span>
      </h2>
      <el-button type="primary" size="small" @click="logout">退出</el-button>
    </el-header>

    <el-container>

      <!-- 侧边栏菜单 -->
      <el-aside width="200px" style="background-color: rgb(238, 241, 246)">
        <el-menu router :default-active="activePath" unique-opened>
          <!-- 内容管理一级菜单 -->
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-s-fold"></i>分类管理
            </template>
            <!-- 内容管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">分类</template>
              <el-menu-item index="/categories/list">分类列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>

          <!-- 物品管理一级菜单 -->
          <el-submenu index="2">
            <template slot="title">
              <i class="el-icon-menu"></i>物品管理
            </template>
            <!-- 物品管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">物品</template>
              <el-menu-item index="/items/list">物品列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>

          <!-- 英雄管理一级菜单 -->
          <el-submenu index="3">
            <template slot="title">
              <i class="el-icon-s-help"></i>英雄管理
            </template>
            <!--英雄管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">英雄</template>
              <el-menu-item
                :index="$route.path"
                v-if="$route.path==='/heroes/create'||$route.path.indexOf('/heroes/edit')!==-1"
              >{{AddOrEdit}}</el-menu-item>
              <el-menu-item index="/heroes/list">英雄列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>

          <!-- 文章管理 -->
          <el-submenu index="4">
            <template slot="title">
              <i class="el-icon-document"></i>文章管理
            </template>
            <!--文章管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">文章</template>
              <el-menu-item
                :index="$route.path"
                v-if="$route.path==='/articles/create'||$route.path.indexOf('/articles/edit')!==-1"
              >{{AddOrEdit}}</el-menu-item>
              <el-menu-item index="/articles/list">文章列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>

          <!-- 广告位管理 -->
          <el-submenu index="5">
            <template slot="title">
              <i class="el-icon-s-opportunity"></i>广告位管理
            </template>
            <!--文章管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">广告位</template>
              <el-menu-item index="/ads/list">广告位列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>

          <!-- 用户管理 -->
          <el-submenu index="6">
            <template slot="title">
              <i class="el-icon-user"></i>用户管理
            </template>
            <!--用户管理二级菜单 -->
            <el-menu-item-group>
              <template slot="title">用户</template>
              <el-menu-item index="/admin_users/list">用户列表</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
        </el-menu>
      </el-aside>
      <el-main>
        <router-view :key="$route.path"></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
  data() {
    const item = {
      date: "2016-05-02",
      name: "王小虎",
      address: "上海市普陀区金沙江路 1518 弄"
    };
    return {
      tableData: Array(20).fill(item),
    };
  },
  methods: {
    logout() {
      localStorage.removeItem("token");
      this.$router.push("/login");
    }
  },
  computed: {
    activePath() {
      return this.$route.path
    },
    AddOrEdit() {
      if (this.$route.path.indexOf('/heroes') !== -1) {
        if (this.$route.path === '/heroes/create') {
          return '添加英雄'
        } else if (this.$route.path.indexOf('/heroes/edit') !== -1) {
          return '编辑英雄'
        }
      } else {
        if (this.$route.path === '/articles/create') {
          return '添加文章'
        } else if (this.$route.path.indexOf('/articles/edit') !== -1) {
          return '编辑文章'
        }
      }

    }
  },
};
</script>
<style>
.el-header {
  background-color: #b3c0d1;
  color: #333;
  line-height: 60px;
}

.el-aside {
  color: #333;
}

.el-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: linear-gradient(#11131f, #252a40);
  color: #eee;
}
</style>
