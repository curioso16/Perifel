var vacantesSection = angular.module("vacantesAPP", []);
var vacantesControllers = {};

vacantesControllers.getOpenings = function ($scope,$http) {
    
    $scope.getData = function (_url){
        return $http({
            url: _url,
            type: "GET",
            headers: {"accept": "application/json;odata=verbose"}
        });
    };

    $scope.mainStart = function () {
        var url = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/VacantesPFLlist/items?$select=Title,Descripcion&$Top=2";
        return $scope.getData(url);        
    }

    var _openings = $scope.mainStart();

    _openings.then(function (data) {
        var ops = data.data.d.results;
        for (var i = 0; i < ops.length; i++) {
            ops[i].Descripcion = ops[i].Descripcion.substr(0, 150);
        }
        $scope._openings = ops;
        $scope.urlTodos = _PFLurlPagina;
    });
}

vacantesSection.controller(vacantesControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("vacantesPFL"), ['vacantesAPP']);
});