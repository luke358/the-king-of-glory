import Vue from "vue";
import App from "./App.vue";
import "./plugins/element.js";
import router from "./router";

import TreeTable from 'vue-table-with-tree-grid'

import "./style.css";

Vue.config.productionTip = false;

import http from "./http";
Vue.prototype.$http = http;

Vue.component('tree-table', TreeTable)

// 全局mixins
Vue.mixin({
  computed: {
    uploadUrl() {
      return this.$http.defaults.baseURL + "/upload";
    }
  },
  methods: {
    getAuthHeaders() {
      return {
        Authorizations: `Bearer ${localStorage.token || ""}`
      };
    }
  }
});

new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
