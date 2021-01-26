const express = require("express");
const ProductService = require("../services/products");
function productsApi(app) {
  const router = express.Router();
  app.use("/api/products", router);

  const ProductsService = new ProductService();

  router.get("/", async (req, res) => {
    try {
      const products = await ProductsService.getProducts();
      res.status(200).json({
        data: products,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });

  router.get("/newProducts", async (req, res) => {
    try {
      const newProducts = await ProductsService.getNewProducts();
      res.status(200).json({
        data: newProducts,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });
}
module.exports = productsApi;
