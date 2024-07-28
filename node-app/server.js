const express = require("express");
const app = express();
const port = 3001;

app.get("/", (req, res) => {
  let sum = 0;
  for (let index = 0; index < 1_000_000_000; index++) {
    sum += index;
  }
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log(`Node app listening at http://localhost:${port}`);
});
