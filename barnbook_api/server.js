const http = require("http");
const app = require("./src/app");
const server = http.createServer(app);
require("dotenv").config();
var env = process.env.NODE_ENV || "development";
var config = require("./src/app/config/config")[env];
const PORT = config.PORT || 4001;
const Model = require("./src/app/models");
const { Op } = require("sequelize"); // Import Sequelize operators

// Test the database connection
Model.sequelize
  .authenticate()
  .then(() => {
    console.log(config);
    console.log(`"${env}" database connection established successfully!`);

    // Sync the models with the database
    // return Model.sequelize.sync({ alter: true }); // Use `force: true` for dropping tables and recreating them
  })
  .then(() => {
    // Start the server
    app.listen(PORT, () => {
      console.log(`Server is running on --->  http://localhost:${PORT}/api/`);
    });
  })
  .catch((err) => {
    console.error("Unable to connect to the database:", err);
  });
