var newsSection = angular.module('newsApp', []);
var newsControllers = {};


newsControllers.getNews = function($scope, $http){
    var getData = function (_url){
        return $http({
            url: _url,
            type: "GET",
            headers: {"accept": "application/json;odata=verbose"}
        });
    };
    
    var getRawNews = function () {
        var newsQuantity = "&$top=";

        if (_PFLNewsNumber !== parseInt(_PFLNewsNumber, 10) || _PFLNewsNumber === null) {
            newsQuantity = "";
        }
        else {
            newsQuantity += _PFLNewsNumber;
        }

        var url =  _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/NewsPFLList/items?$orderby=Modified desc" + newsQuantity 
            + "&$filter=StartDate le datetime'" + new Date().toISOString() + "' and EndDate ge datetime'" + new Date().toISOString() + "'"
            //+ "&$select=ID,Title,Description,Details,File/ServerRelativeUrl";
            + "&$expand=File";
            
        return getData(url);
    };
    
    $scope.showLightbox = function (id) {
        document.getElementById(id).style.display='block';
        document.getElementById('fade').style.display='block';
    }

    $scope.hideLightbox = function (id) {
        /*document.getElementById(id).style.display = 'none';
        $(".white_content").css("display", "none");
        document.getElementById('fade').style.display = 'none';*/
        angular.element(".white_content").hide();
        angular.element("#fade").hide();
    }

    var news = getRawNews();
     
    news.then(function(data){
        var results = data.data.d.results;
        var newsArray = [];
        
        for(var i = 0; i < results.length; i++){
            newsArray.push({
                id:results[i].ID,
                title:results[i].Title,
                description:results[i].Description,
                details:results[i].Details,
                url: results[i].File.ServerRelativeUrl 
            });
        }
        $scope.d = newsArray;
    });
    
};

newsSection.controller(newsControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("News"), ['newsApp']);
})