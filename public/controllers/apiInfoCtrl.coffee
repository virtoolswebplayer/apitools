angular.module('ApiTools').controller 'apiInfoCtrl',
    ($scope,$rootScope) ->
      $scope.info =
        name: 'oms-server swagger api'
        host: 'http://localhost:3001'
        baseUrl: '/rest'
        version: '1.0'
        description: 'oms-server api'
