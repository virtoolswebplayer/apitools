LinvoDB = require("linvodb3") # 基于javascript嵌入式文档数据库
LinvoDB.defaults.store = {db: require("medeadown")}
LinvoDB.dbPath = process.cwd() + '/database/';

# 创建数据库
apiInfo = new LinvoDB("apiInfo", {}) # 保存swagger基本信息,和 模块
paths = new LinvoDB("paths", {}) # 保存swagger基本信息,和 模块
definitions = new LinvoDB("definitions", {}) # 保存swagger基本信息,和 模块

# 初始化数据
#apiInfo.count {},(err,count)->
#  if count < 1
#    apiInfo.save require('./apiInfo.json')


module.exports = {
  apiInfo: apiInfo
  paths: paths
  definitions: definitions
}
