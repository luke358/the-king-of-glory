const express = require("express");

const app = express();

app.set("secret", "qwertyuiop");

app.use(require("cors")()); //跨域处理
app.use(express.json());

app.use("/uploads", express.static(__dirname + "/uploads"));

require("./plugins/db")(app);
require("./routes/admin")(app);
require("./routes/web")(app);

app.listen(3001, () => {
  console.log("http://localhost:3001");
});
