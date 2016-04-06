var newsSection = angular.module('newsApp', []);
var newsControllers = {};

newsControllers.getNews = function($scope, $http){
    $scope.getData = function (_url){
        return $http({
            url: _url,
            type: "GET",
            headers: {"accept": "application/json;odata=verbose"}
        });
    };
    
    $scope.getRawNews = function () {
        var newsQuantity = "&$top=";

        if (_PFLNewsNumber !== parseInt(_PFLNewsNumber, 10) || _PFLNewsNumber === null) {
            newsQuantity = "";
        }
        else {
            newsQuantity += _PFLNewsNumber;
        }

        var url =  _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/NewsPCList/items?$orderby=Modified desc" + newsQuantity 
            + "&$filter=StartDate1 le datetime'" + new Date().toISOString() + "' and EndDate1 ge datetime'" + new Date().toISOString() + "'"
            + "&$select=Title,Description1,Details,Attachments,AttachmentFiles/ServerRelativeUrl"
            + "&$expand=AttachmentFiles";
        
        var news = $scope.getData(url);

        news.then(function (data) {
            var results = data.data.d.results;
            var newsArray = [];

            for (var i = 0; i < results.length; i++) {
                newsArray.push({
                    title: results[i].Title,
                    description: results[i].Description1,
                    details: results[i].Details,
                    url: (results[i].AttachmentFiles.results.length > 0) ? _spPageContextInfo.webAbsoluteUrl + results[i].AttachmentFiles.results[0].ServerRelativeUrl : ""
                });
            }
            $scope.newsArray = newsArray;
        });

        return ;
    };
    
    $scope.showLightbox = function (popUpData) {
        $scope.newsPopUp = {
            title: popUpData.title,
            description: popUpData.description,
            url: popUpData.url
        }
        document.getElementById('news-details').innerHTML = popUpData.details;
        document.getElementById('newsLightbox').style.display = 'block';
        document.getElementById('fadeNews').style.display = 'block';
    }
    $scope.hideLightbox = function () {
        document.getElementById('newsLightbox').style.display = 'none';
        document.getElementById('fadeNews').style.display = 'none';
    }

    $scope.getRawNews();
};

newsSection.controller(newsControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("News"), ['newsApp']);
})