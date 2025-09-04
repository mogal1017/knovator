
const express = require("express");
const router = express.Router();
var env = process.env.ENV || "dev";
const config = require("../../app/config/config")[env];

router.get("/login", (req, res) => {
  res.render(__dirname + "/login_form", {
    currentPage: "login_form",
    base_url: config.base_url,
    isAlterMode: false,
  });
});

module.exports = router;

