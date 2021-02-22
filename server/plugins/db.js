module.exports = app => {
  const mongoose = require("mongoose");

  mongoose.connect("mongodb://root:zxc5759139@127.0.0.1:27017/node-vue-moba?authSource=admin", {
    useNewUrlParser: true,
    useUnifiedTopology: true
  });

  require("require-all")(__dirname + "/../models");
};
