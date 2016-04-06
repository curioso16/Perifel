var currency = angular.module("currencyApp", []);
var currencyControllers = {};

currencyControllers.getCurrency = function () {
    alert(_xmlTipoCambio);
};

currency.controller(currencyControllers);

angular.element(document).ready(function (){
    angular.bootstrap(document.getElementById("CurrencySection"),['currencyApp']);
});