express = require('express')
bodyParser = require('body-parser')
path = require 'path'


app = new express()

app.use(bodyParser.json())
#app.use(bodyParser.urlencoded({extended: false}))


app.use '/api/apiInfo', require('./routes/apiInfo')
app.use '/api/paths', require('./routes/paths')
app.use '/api/definitions', require('./routes/definitions')

# 静态资源`/public` 提供 SwaggerUi 用于公布和测试Apis
app.use(express.static(path.join(__dirname, 'public')))

app.listen(5900)


console.log 'apiTools成功启动 http://127.0.0.1:5900'