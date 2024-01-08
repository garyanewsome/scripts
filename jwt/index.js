const jwt = require('jsonwebtoken')

const token = jwt.sign({}, 'terces', { keyid: 'server' });

console.log(token)

