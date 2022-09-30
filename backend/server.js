const express = require("express");
const cors = require("cors");
const app = express();
const port = 4000;

app.use(cors());
const cassandra = require("./db_access");

app.get("/get-salary", async (req, res) => {
  console.log("getSalary()");
  a = await cassandra.getSalary();
  console.log(a);
  res.send(a);
});

increasePercents = [1.0, 2.0, 5.0, 20.0, 100.0, 11273632.0];
currentPercentIndex = 0;
app.get("/increase-salary", async (req, res) => {
  if (currentPercentIndex == 6) currentPercentIndex = 0;
  newSal = increasePercents[currentPercentIndex].toFixed(1).toString();
  console.log("increaseSalary: " + newSal);
  a = await cassandra.increseSalary(newSal);
  currentPercentIndex++;
  console.log(a);
  res.send("OK");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
