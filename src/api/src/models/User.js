const app = require('../app')
const { DataTypes } = require('sequelize')

const User = app.database.define('User', {
  name: DataTypes.STRING,
  email: DataTypes.STRING,
  password: DataTypes.STRING,
})

module.exports = User