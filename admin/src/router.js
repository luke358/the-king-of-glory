import Vue from "vue";
import VueRouter from "vue-router";

import Login from "./views/Login";

import Main from "./views/Main";
import CategoryList from "./views/CategoryList";

import ItemList from "./views/ItemList";

import Hero from "./views/Hero";
import HeroList from "./views/HeroList";

import Article from "./views/Article";
import ArticleList from "./views/ArticleList";

import AdList from "./views/AdList";

import AdminUserList from "./views/AdminUserList";
Vue.use(VueRouter);

const routes = [
  {
    path: "/login",
    name: "login",
    component: Login,
    meta: { isPublic: true },
  },
  {
    path: "/",
    component: Main,
    children: [
      { path: "/categories/list", component: CategoryList },

      { path: "/items/list", component: ItemList },

      { path: "/heroes/create", component: Hero },
      { path: "/heroes/list", component: HeroList },

      {
        path: "/heroes/edit/:id",
        component: Hero,
        props: true,
      },
      { path: "/heroes/list", component: ArticleList },

      { path: "/articles/create", component: Article },
      {
        path: "/articles/edit/:id",
        component: Article,
        props: true,
      },
      { path: "/articles/list", component: ArticleList },

      { path: "/ads/list", component: AdList },

      { path: "/admin_users/list", component: AdminUserList },
    ],
  },
];

const router = new VueRouter({
  mode: "history",
  // base: process.env.BASE_URL,
  base: "/wzry/",
  routes,
});

router.beforeEach((to, from, next) => {
  if (!to.meta.isPublic && !localStorage.token) {
    return next("/login");
  }
  next();
});

export default router;
