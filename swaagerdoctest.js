var restify = require('restify'),
    swagger = require('swagger-doc'),
    server  = restify.createServer();


// All configuration is optional. Only server is needed to add swagger routes. 
swagger.configure(server, {
  discoveryUrl: "/api.json",
  version: "0.1",
  basePath: "https://localhost:3000"
});


// Create a new swagger resource at specified route. 
docs = swagger.createResource("/payments");

docs.models.Payment = {
  id: Number,
  amount: String
};

// Documents an api, all options are same as in swagger. 
docs.get("/payments/{id}", "Gets information about a specific payment", {
  notes: "The information is very sexy.",
  nickname: "getPayment",
  parameters: [
    {name: "id", description: "Id of payment", required: true, dataType: "string", paramType: "path"}
  ]
});

// Another resource 
var docs = swagger.createResource("/account", {
  models: {
    Account: {
      id: Number,
      name: String
    }
  }
});

// Swagger-doc has express-like api. 
docs.post('/account/authenticate', {
  summary: "Authenticates a user"
});

docs.get('/account/user', {
  summary: "Returns the logged in user"
});

docs.delete('/account/user', {
  summary: "Logs out the current user"
});

server.listen(3000);