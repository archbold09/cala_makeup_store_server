const { connection } = require("../db/mysql");
class CategoryService {
  constructor() {
    this.table = "categories";
    this.connection = connection;
  }

  async getCategories() {
    try {
      const [data,other_data] = await this.connection.query("SELECT * FROM categories WHERE state = 1");
      return data
    } catch (error) {
      console.log(`Error: ${error}`);
      return []
    }
  }
}

module.exports = CategoryService;
