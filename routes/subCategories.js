const express = require("express");
const SubCategoryService = require("../services/subCategories");
function subCategoriesApi(app) {
  const router = express.Router();
  app.use("/api/subCategories", router);

  const SubCategoriesService = new SubCategoryService();

  router.get("/", async (req, res) => {
    try {
      const subCategories = await SubCategoriesService.getSubCategories();
      res.status(200).json({
        data: subCategories,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  });

}
module.exports = subCategoriesApi;
