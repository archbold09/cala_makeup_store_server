const { connection } = require("../db/mysql");
class SubCategoryService {
  constructor() {
    this.table = "sub_categories";
    this.connection = connection;
  }

  async getSubCategories() {
    try {
      const [data,other_data] = await this.connection.query("SELECT * FROM sub_categories WHERE state = 1");
      return data
    } catch (error) {
      console.log(`Error: ${error}`);
      return []
    }
  }
}

module.exports = SubCategoryService;
