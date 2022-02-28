const { response } = require("express")
const jwt = require('jsonwebtoken');

const validateJWT = (req, res = response, next) => {

    const token = req.header('x-token');

    if (!token) { return res.status(401).json({ ok: false, msg: 'Please send a valid Token', }); }

    try {
        const { uid, name } = jwt.verify(token, process.env.SECRET_JWT_SEED);
        req.uid = uid;
        req.name = name;
    }
    catch (error) { return res.status(401).json({ ok: false, msg: 'Not a valid Token', }); }

    next();
}

module.exports = {
    validateJWT
}