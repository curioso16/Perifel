var quickAccess = angular.module('QuickAccess', []);
var QAControllers = {};

QAControllers.getSections = function($scope, $http){
    var reqObject = {
        url: _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/QuickAccessPFLList/items?$select=Title,URL",
		type: "GET",
		headers: {"accept": "application/json;odata=verbose"}
    };
    $http(reqObject).then(function(data){
        $scope.d = data.data.d.results;
    });
};

quickAccess.controller(QAControllers);

angular.element(document).ready(function(){
    angular.bootstrap(document.getElementById("QuickAccess"), ['QuickAccess']);
})