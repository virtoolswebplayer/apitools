angular.module('ApiTools').controller 'mainCtrl',
  ($scope, $http) ->
    $scope.panelOpen =
      one: true
      two: true
      three: true
      four: true

    $http.get('api/apiInfo').then (res)->
      $scope.apiInfo = res.data
      console.log res.data

    # 保存api接口信息
    $scope.saveApiInfo = ()->
      $http.put('api/apiInfo', $scope.apiInfo).then (res)->
        console.log res.data


