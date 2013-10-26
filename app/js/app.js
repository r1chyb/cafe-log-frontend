'use strict';



angular.module('cafeLog', [
    'cafeLog.controllers'
]).
factory('Visits', function() {
    return [];
}).
config(['$routeProvider', function ($routeProvider) {
    $routeProvider.
        when('/',
             {
                 controller: 'ListController',
                 templateUrl:'partials/list.html'
             }).
        when('/edit/:visitId',
             {
                 controller: 'EditController',
                 templateUrl:'partials/detail.html'
             }).
        when('/new',
             {
                 controller: 'CreateController',
                 templateUrl:'partials/detail.html'
             }).
        otherwise({redirectTo:'/'});
}]);
