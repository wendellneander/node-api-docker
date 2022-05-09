const { Router } = require("express")
const router = Router()

router.get('/', function(req, res) {
    return res.json({ ok: true })
})

module.exports = router