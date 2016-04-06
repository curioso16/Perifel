angular.element(Sliderapp).ready(function () {
    setTimeout(function () {
        var swiper = new Swiper('.swiper1', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            spaceBetween: 30,
            centeredSlides: true,
            autoplay: 2500,
            autoplayDisableOnInteraction: false
        });
    }, 3000)
});

var Sliderapp = angular.module('Slider', [])
  .controller('SliderController', function ($scope, $http) {
      var config = { dataType: "json", headers: { "Accept": "application/json; odata=verbose" } }
      var url = _spPageContextInfo.siteAbsoluteUrl + "/_vti_bin/listdata.svc/SliderPFL";
      var data = $http.get(url, config).then(function (e) {
          var items = e.data.d.results;
          $scope.SLD = items;
      },
      function (e) {
          alert("falla")
      });
  });
angular.bootstrap(document.getElementById("Sliderapp"), ['Slider']);