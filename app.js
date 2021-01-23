const express = require('express')
const app = express()
const cors = require('cors')


app.use(cors());
app.use(express.json());


const {config} = require('./config')
const usersApi = require('./routes/users')
const categoriesApi = require('./routes/categories')

//routes
usersApi(app)
categoriesApi(app)

app.listen(config.port, ()=> {
    console.log(`Server on: http://localhost:${config.port}`)
})