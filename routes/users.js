const express = require("express");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const UserService = require("../services/users");
const protectedRoute = require("../middlewares/protectedRoute");
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
    try {
      let email = req.body.email;
      const user = await UsersService.loginUser(email);

      if (!user[0]) {
        return res.json({
          status: false,
          message: "El usuario no existe.",
        });
      }

      let password = req.body.password;
      bcrypt.compare(password, user[0].password, (message, ok) => {
        if (!ok) {
          return res.json({
            status: false,
            message: "E-Mail o contraseña incorrectos.",
          });
        }
        let userData = {
          id: user[0].id,
          name: user[0].name,
          lastName: user[0].lastName,
          email: user[0].email,
          state: user[0].state,
        };

        jwt.sign(
          userData,
          "secretkey",
          { expiresIn: 60 * 60 * 1 },
          (error, token) => {
            if (error) throw error;
            return res.json({
              userData,
              status: true,
              token: token,
            });
          }
        );
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });

  router.get("/profile", protectedRoute, async (req, res) => {
    // let userData = {
    //   id: user[0].id,
    //   name: user[0].name,
    //   lastName: user[0].lastName,
    //   email: user[0].email,
    //   state: user[0].state,
    // };
    res.json({
      email: "a@gmail.com",
    });

    // try {
    //   const users = await UsersService.getUsers();
    //   res.status(200).json({
    //     data: users,
    //   });
    // } catch (error) {
    //   console.log(`Error: ${error}`);
    // }
  });
}
module.exports = usersApi;
