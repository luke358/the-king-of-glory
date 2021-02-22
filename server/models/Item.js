const mongoose = require("mongoose");

const schema = new mongoose.Schema({
  name: { type: String },
  icon: { type: String },
  desc:{ type:String },
  detail: { type: String },
  star: { type: String, default: '' },
});

module.exports = mongoose.model("Item", schema);
