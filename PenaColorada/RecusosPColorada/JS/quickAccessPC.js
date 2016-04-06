var quickAccess = angular.module('QuickAccess', []);
var QAControllers = {};

QAControllers.getSections = function($scope, $http){
    $scope.getData = function (_url) {
        return $http({
            url: _url,
            type: "GET",
            headers: {"accept": "application/json;odata=verbose"}
        });
    }
    $scope.getQuickAccesses = function () {
        var url = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/QuickAccessPCList/items?$select=ID,Title,Url,Imagen,PopUp,NombreLista";
        var reqObject = $scope.getData(url);

        reqObject.then(function (data) {
            $scope.AccessesData = data.data.d.results;
        });
    };
    $scope.evaluateClick = function (data) {
        if (data.PopUp) {
            var queryList = data.NombreLista.trim().split(" ").join("_x0020_") + "List";
            var url = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/" + queryList + "/items?$select=Title,Url";
            var reqObject = $scope.getData(url);

            reqObject.then(function (data) {
                $scope.apps = data.data.d.results;
                $scope.showLightbox();
            });
        }
    };
    $scope.showLightbox = function () {
        document.getElementById('appsLightbox').style.display = 'block';
        document.getElementById('fadeQA').style.display = 'block';
    };
    $scope.hideLightbox = function () {
        document.getElementById('appsLightbox').style.display = 'none';
        document.getElementById('fadeQA').style.display = 'none';
    };
    $scope.getQuickAccesses();
};

quickAccess.controller(QAControllers);

angular.element(document).ready(function(){
    angular.bootstrap(document.getElementById("quickback"), ['QuickAccess']);
})