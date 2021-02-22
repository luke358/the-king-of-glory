*本套请求接口和对应的model，一个是小写复数，一个是大写单数*

@代表根路径

```javascript
//在中间件中会用到，主要是把小写复数变成大写单数
npm i in inflection
```



## 后端处理

@routes/admin/index.js

```javascript
const router = express.Router({
    mergeParams: true //合并下面route的参数
  });

//创建资源
router.post("/",async (req,res) => {
    const model = await req.Mode.create.create(req.body);
    res.send(model);
});

//更新资源
router.put("/:id", async (req,res) => {
    const model = await req.Model.findByIdAndUpdate(req.params.id,req.body);
    res.send(model);
});
//资源列表
router.get("/",async (req,res) => {
    const items = await req.Model.find();
    res.send(items);
});
//资源详情
router.get("/:id", async(req,res) => {
    const model = await req.Model.findById(req.params.id);
    res.send(model);
})

//导入中间件模块
const resourceMiddleware = require("../../middleware/auth");
//登陆中间件，登陆验证用的，也可以不用
const authMiddleware = require("../../middleware/auth");

//配置中间件
//resource是模块名称的小写复数形式，
app.use("/admin/api/rest/:resource",authMiddleware,resourceMiddleware(),router);

//错误处理

app.use(async (err, req, res, next) => {
    res.status(err.statusCode || 500).send({
      message: err.message
    });
  });
```

@middleware/resource.js

```javascript
module.exports = options => {
  return async (req, res, next) => {
    //把路径名称变成大写单数的Model,  req.params会带有路径
    const modelName = require("inflection").classify(req.params.resource);
    req.Model = require(`../models/${modelName}`);
    next();
  };
};
```

@middleware/auth.js

```javascript
npm i jsonwebtoken
npm i http-assert
```



```javascript
module.exports = options => {
  const jwt = require("jsonwebtoken");
  const assert = require("http-assert");
  const AdminUser = require("../models/AdminUser");

  return async (req, res, next) => {
    //获取到前端的token，进行拆解，验证
    const token = String(req.headers.authorization || "")
      .split(" ")
      .pop();
    assert(token, 401, "请先登录");

    // 获取 app 用 req.app.get
    const { id } = jwt.verify(token, req.app.get("secret"));
    assert(id, 401, "请先登录");
    //如果有user用户，需要把这个改成可配置的,就是AdminUser可以变换
      //初步想法是根据路径是admin还是user判断
    req.user = await AdminUser.findById(id);
    assert(req.user, 401, "请先登录");
    await next();
  };
};

```

## 前端token处理

@代表src

@http.js

也可以放在工具文件夹里

```javascript
import axios from "axios";
import Vue from "vue";
import router from "./router";
const http = axios.create({
  baseURL: "http://localhost:3000/admin/api"
});

//请求拦截，每次请求都添加token
http.interceptors.request.use(
  function(config) {
    if (localStorage.token) {
      config.headers.Authorization = "Bearer " + localStorage.token || "";
    }
    return config;
  },
  function(error) {
    return Promise.reject(error);
  }
);
//响应拦截
http.interceptors.response.use(
  res => {
    return res;
  },
  err => {
    if (err.response.data.message) {
      Vue.prototype.$message({
        type: "error",
        message: err.response.data.message
      });
      if (err.response.status === 401) {
        router.push("/login");
      }
    }
    return Promise.reject(err);
  }
);
export default http;

```

@router.js

```javascript

//路由守卫
router.beforeEach((to, from, next) => {
  if (!to.meta.isPublic && !localStorage.token) {
    return next("/login");
  }
  next();
});
```

## 示例

```javascript
//请求数据
async fetch() {
      const res = await this.$http.get("rest/categories");
      this.items = res.data;
      console.log(this.items);
    },
//删除数据
async remove(row) {
      this.$confirm(`确定删除"${row.name}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/categories/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
```

