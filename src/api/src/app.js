const express = require('express')
const cors = require('cors')
const routes = require('./routes')
const database = require('./database')

class App {
    constructor() {
        this.server = express()
        this.middlewares()
        this.routes()
        this.database()
    }

    routes() {
        this.server.use(routes)
    }

    middlewares() {
        this.server.use(cors())
        this.server.use(express.json())
    }

    database() {
        this.database = database
    }
}

module.exports = new App().server