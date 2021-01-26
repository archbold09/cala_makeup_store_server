const { connection } = require("../db/mysql");
class ProductService {
  constructor() {
    this.table = "products";
    this.connection = connection;
  }

  async getProducts() {
    try {
      const [data,other_data] = await this.connection.query(`SELECT * FROM ${this.table} WHERE state = 1`);
      return data
    } catch (error) {
      console.log(`Error: ${error}`);
      return []
    }
  }

  async getNewProducts() {
    try {
      const [data,other_data] = await this.connection.query(`SELECT * FROM ${this.table} WHERE state = 1 ORDER BY created_at DESC LIMIT 10`);
      return data
    } catch (error) {
      console.log(`Error: ${error}`);
      return []
    }
  }
}

module.exports = ProductService;
