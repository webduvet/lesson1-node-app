var express = require('express')
var app = express()

// respond with "hello world" when a GET request is made to the homepage
app.get('/', function (req, res) {
  res.send({
    environment: process.env.NODE_ENV,
    response: 'hello world'
  })
})
app.listen(3000, () => console.log('Example app listening on port 3000!'))
