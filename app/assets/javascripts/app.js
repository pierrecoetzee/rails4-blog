
var app = angular.module('AngularBlogger', [
   'ngResource',
   'ngAnimate',
   'mgcrea.ngStrap',
   'templates',
   'toaster'
  ])


  .controller('MasterCtrl', ['$scope',function($scope){

      $scope.navigation = {'menu1': '/',
                           'menu2': '/articles/new'}
  }]);

  app.config(function ($httpProvider, $resourceProvider) {
  	$resourceProvider.defaults.stripTrailingSlashes = false;
  });
