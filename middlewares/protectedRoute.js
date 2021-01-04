const jwt = require('jsonwebtoken')
const protectedRoute = (req, res, next) => {
  const token = req.headers["authorization"];
  
  if (!token)
    return res.status(401).json({ message: "Error de autenticación." });

  jwt.verify(token, "secretkey", (error, decoded) => {
    if (error)
      return res.status(401).json({ message: "Error de autenticación." });
    req.decoded = decoded;
    next();
  });
};

module.exports = protectedRoute