const express = require("express");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
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
    // bcrypt.hash(req.body.password, 10, (error, password) => {
    //   console.log(password)
    // })
    // bcrypt.compare(req.body.password, 10, (error, password) => {
    //   console.log(password);
    // });
    // console.log(req.body);
    // res.status(200).json({
    //   data: req.body,
    // });
    try {
      let email = req.body.email;
      const user = await UsersService.loginUser(email);

      if (!user[0]) {
        return res.json({
          message: "El usuario no existe.",
        });
      }

      let password = req.body.password;
      bcrypt.compare(password, user[0].password, (error, ok) => {
        if (!ok) {
          return res.json({ error: "E-Mail o contraseña incorrectos." });
        }
        let userData = {
          id: user[0].id,
        };

        jwt.sign(
          userData,
          "secretkey",
          { expiresIn: 60 * 60 * 1 },
          (error, token) => {
            if (error) throw error;
            return res.json({ token: token });
          }
        );
      });
      
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });
}
module.exports = usersApi;
