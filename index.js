const express = require("express");

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
  res.status(200).send("<h1>HI DIDLY HO NEIGHBOUR!!!</h1>");
});

app.listen(5000, () => {
  console.log("Express listening on port 5000");
});
