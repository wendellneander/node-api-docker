const app = require('./src/app')
const port = process.env.API_PORT || 80

app.listen(port, () => {
    console.log(`Api running on port ${port}`)
})