var CursosyTalleres = angular.module("cursosAPP", []);
var CursosControllers = {};

CursosControllers.getCourses = function ($scope, $http) {

    $scope.getData = function (_url) {
        return $http({
            url: _url,
            type: "GET",
            headers: { "accept": "application/json;odata=verbose" }
        });
    };

    $scope.mainStart = function () {
        var url = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/cursostalleresPClist/items?$select=Title,FechaInicio,FechaFin,Locacion,Horario&$Top=2";
        return $scope.getData(url);
    }

    $scope.getMonthName = function (_month) {
        var month = "";
        switch (_month) {
            case 0:
                month = "Enero";
                break;
            case 1:
                month = "Febrero";
                break;
            case 2:
                month = "Marzo";
                break;
            case 3:
                month = "Abril";
                break;
            case 4:
                month = "Mayo";
                break;
            case 5:
                month = "Junio";
                break;
            case 6:
                month = "Julio";
                break;
            case 7:
                month = "Agosto";
                break;
            case 8:
                month = "Septiembre";
                break;
            case 9:
                month = "Octubre";
                break;
            case 10:
                month = "Noviembre";
                break;
            case 11:
                month = "Diciembre";
                break;
        }
        return month;
    }


    var _courses = $scope.mainStart();
    
    _courses.then(function (data) {
        var crs = data.data.d.results;
        var coursesArray = [];
        for (var i = 0; i < crs.length; i++) {
            var courseObj = {};
            courseObj.title = crs[i].Title;
            courseObj.location = crs[i].Locacion;
            courseObj.date = "del " + new Date(crs[i].FechaInicio).getDate() + " de " + $scope.getMonthName(new Date(crs[i].FechaInicio).getMonth()) + " al " + new Date(crs[i].FechaFin).getDate() + " de " + $scope.getMonthName(new Date(crs[i].FechaFin).getMonth());
            courseObj.hours = crs[i].Horario;
            coursesArray.push(courseObj);
        }

        $scope.courses = coursesArray;
        $scope.urlTodos = _PFLUrlCursos;
    });
}

CursosyTalleres.controller(CursosControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("cursosPC"), ['cursosAPP']);
});