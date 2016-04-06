var weatherForm = angular.module('weatherApp', []);
var weatherControllers = {};

weatherControllers.getWeather = function ($scope) {
    $scope.weatherCities = [];

    $scope.loadWeather = function (location, woeid) {
        $.simpleWeather({
            location: location,
            woeid: woeid,
            unit: 'c',
            success: function (data) {
                $scope.$apply(function () {
                    $scope.weatherCities.push(data);
                });
            },
            error: function (error) {
                $scope.$apply(function () {
                    $scope.weatherCities.push(error);
                });
            }
        });
    }

    var jsonCiudadesPFL = _jsonCiudadesPFL;

    jsonCiudadesPFL.ciudades.forEach(function (ciudadPFL) {
        var ciudad = ciudadPFL.ciudad + ", " + ciudadPFL.region;
        $scope.loadWeather(ciudad, "");
    }, this);

    var birthdayBirthdays = new Swiper('#weatherPFL', {
        autoplay: 2500,
    });
};

weatherForm.controller(weatherControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("weatherPFL"), ['weatherApp']);
});