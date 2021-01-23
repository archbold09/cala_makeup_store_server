const express = require("express");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const CategoryService = require("../services/categories");
const protectedRoute = require("../middlewares/protectedRoute");
function categoriesApi(app) {
  const router = express.Router();
  app.use("/api/categories", router);

  const CategoriesService = new CategoryService();

  router.get("/", async (req, res) => {
    try {
      const categories = await CategoriesService.getCategories();
      res.status(200).json({
        data: categories,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });

  router.post("/login", async (req, res) => {
    try {
      let email = req.body.email;
      const user = await CategoriesService.loginUser(email);

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

}
module.exports = categoriesApi;
