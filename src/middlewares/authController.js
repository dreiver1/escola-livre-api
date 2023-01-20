require('dotenv').config();
const jwt = require("jsonwebtoken")


module.exports = (request, response, next) => {
  const token = request.headers.authorization.split(' ')[1];
  if (!token) { 
    return response.status(500).send({ message: "Login obrigatorio!" }) 
  }
  jwt.verify(token, process.env.JWT_KEY, (error, decode) => {
    if (error) { 
      return response.status(401).json({ message: "usuario ou senha invalidos" }) 
    }
    request.user = decode;
    console.log(decode)
    next();
  });
}