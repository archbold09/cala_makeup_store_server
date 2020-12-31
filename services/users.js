const { connection } = require("../db/mysql");
class UserService {
  constructor() {
    this.table = "users";
    this.connection = connection;
  }

  async getUsers() {
    try {
      const [data,other_data] = await this.connection.query("SELECT * FROM users");
      return data
    } catch (error) {
      console.log(`Error: ${error}`);
    }
  }
}

module.exports = UserService;
