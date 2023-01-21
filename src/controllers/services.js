const jwt = require("jsonwebtoken")

exports.authValidation = async (req, res) => {
  try {
    const { token } = req.body;
    await jwt.verify(token, process.env.JWT_KEY, (error, decode) => {
      if (error) {
        return res.status(401).json({ message: "Token invalido: " + token})
      }
      return res.json(decode)
    });
  } catch (error) {
    console.log(error)
    return res.json('Internal server error!')
  }
}