const express = require('express')
const app = express()
const cors = require('cors')


app.use(cors());
app.use(express.json());


const {config} = require('./config')
const usersApi = require('./routes/users')

//routes
usersApi(app)

app.listen(config.port, ()=> {
    console.log(`Server on: http://localhost:${config.port}`)
})