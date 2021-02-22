module.exports = app => {
  const express = require("express");
  const jwt = require("jsonwebtoken");
  const assert = require("http-assert");
  const AdminUser = require("../../models/AdminUser");

  const router = express.Router({
    mergeParams: true
  });
  // 创建资源
  router.post("/", async (req, res) => {
    const model = await req.Model.create(req.body);
    res.send(model);
  });
  // 更新资源
  router.put("/:id", async (req, res) => {
    const model = await req.Model.findByIdAndUpdate(req.params.id, req.body);
    res.send(model);
  });
  // 删除资源
  router.delete("/:id", async (req, res) => {
    await req.Model.findByIdAndDelete(req.params.id, req.body);
    res.send({
      success: true
    });
  });
  // pupulate 关联查询
  // 资源列表
  router.get("/", async (req, res) => {
    if (req.Model.modelName === "Category") {
      //查询没有parent字段的
      const parent = await req.Model.find({
        parent: { $exists: false }
      }).lean();
      //查询有parent字段的
      const items = await req.Model.find({
        parent: { $exists: true }
      }).lean();
      //循环父级
      parent.forEach((val, index) => {
        //创建子集接收器
        val.child = [];
        //循环子集
        items.forEach((value, index) => {
          //判段子级的parent是否和父级id相同
          if (value.parent.toString() == val._id.toString()) {
            //把相同的子级添加进父级的子级接收器
            val.child.push(value);
          }
        });
      });
      res.send(parent);
    } else {
      const items = await req.Model.find();
      res.send(items);
    }
  });
  // 资源详情
  router.get("/:id", async (req, res) => {
    const model = await req.Model.findById(req.params.id);
    res.send(model);
  });
  //登陆校验中间件
  const authMiddleware = require("../../middleware/auth");
  const resourceMiddleware = require("../../middleware/resource");
  app.use(
    "/admin/api/rest/:resource",
    authMiddleware(),
    resourceMiddleware(),
    router
  );
  
  const multer = require("multer");
  const upload = multer({ dest: __dirname + "/../../uploads" });
  app.post("/admin/api/upload", upload.single("file"), async (req, res) => {
    const file = req.file;
    console.log(req.headers.authorizations)
    file.url = `http://localhost:3001/uploads/${file.filename}`;
    res.send(file);
  });

  app.post("/admin/api/login", async (req, res) => {
    const { username, password } = req.body;

    //根据用户名找用户
    const user = await AdminUser.findOne({ username }).select("+password");
    assert(user, 422, "用户不存在");
    // 校验密码;
    const isVaild = require("bcryptjs").compareSync(password, user.password);
    assert(isVaild, 422, "密码错误");
    if (!isVaild) {
      return res.status(422).send({
        message: "密码错误"
      });
    }

    //返回token
    const token = jwt.sign({ id: user._id }, app.get("secret"));
    res.send({ token });
  });

  //错误处理
  app.use(async (err, req, res, next) => {
    res.status(err.statusCode || 500).send({
      message: err.message
    });
  });
};
