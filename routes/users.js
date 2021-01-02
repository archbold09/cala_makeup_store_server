const express = require("express");
const UserService = require("../services/users");

function usersApi(app) {
  const router = express.Router();
  app.use("/api/users", router);

  const UsersService = new UserService();

  router.get("/", async (req, res) => {
    try {
      const users = await UsersService.getUsers();
      res.status(200).json({
        data: users,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });

  router.post("/login", async (req, res) => {
    console.log(req.body);
    res.status(200).json({
       data: req.body 
    });
    // try {
    //   // const users = await UsersService.getUsers();
    //   // res.status(200).json({
    //   //   data: users,
    //   // });
    // } catch (error) {
    //   console.log(`Error: ${error}`);
    // }
  });
}
module.exports = usersApi;
