'use strict';


angular.module('cafeLog.controllers', []).
controller(
    'CreateController',
    ['$scope', '$location', 'Visits', '$filter',
     function($scope, $location, Visits, $filter) {
         $scope.visit = {
             'visited': $filter('date')(new Date(), 'yyyy-MM-dd'),
             'beverage_rating': 3,
             'service_rating': 3,
             'ambience_rating': 3
         };

         $scope.save = function () {
             Visits.push($scope.visit);
             $location.path('/');
         };
}]).
controller(
    'EditController',
    ['$scope', '$location', '$routeParams', 'Visits',
     function($scope, $location, $routeParams, Visits) {
         $scope.visit = angular.copy(Visits[$routeParams.visitId]);
         $scope.save = function() {
             Visits[$routeParams.visitId] = $scope.visit;
             $location.path('/');
         };
}]).
controller(
    'ListController',
    ['$scope', 'Visits',
     function($scope, Visits){
         $scope.visits = Visits;
}]);
