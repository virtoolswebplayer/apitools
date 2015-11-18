angular.module('ApiTools').controller 'mainCtrl',
  ($scope, $http, $rootScope) ->
    $scope.name = 'mainCtrl'

    $http.get('apidoc.json')
    .then (res)->
      $rootScope.apiData = res
