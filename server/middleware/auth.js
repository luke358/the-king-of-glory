module.exports = options => {
  const jwt = require("jsonwebtoken");
  const assert = require("http-assert");
  const AdminUser = require("../models/AdminUser");

  return async (req, res, next) => {
    const token = String(req.headers.authorization || "")
      .split(" ")
      .pop();
    assert(token, 401, "请先登录");

    // 获取 app 用 req.app.get
    const { id } = jwt.verify(token, req.app.get("secret"));
    assert(id, 401, "请先登录");
    //如果有user用户，需要把这个改成可配置的,就是AdminUser可以变换
    req.user = await AdminUser.findById(id);
    assert(req.user, 401, "请先登录");
    await next();
  };
};
