const express = require("express")
const path = require("path")
const app = express();

const port = 3000;

app.listen(port,()=>{
    console.log("app listen to port "+port)
})

app.use(express.static(path.join("")))
