var BirthdaySection = angular.module("BirthdaysApp", []);
var birthdayControllers = {};

birthdayControllers.getBirthdays = function ($scope, $http) {
    var getData = function () {
        var _url = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/BirthdaysPFLlist/items?$select=Person/Title,BirthdayDate,StartDate1,Picture1&$expand=Person/id";

        return $http({
            url: _url,
            type: "GET",
            headers: { "accept": "application/json;odata=verbose" }
        });
    };

    var getDates = function () {
        var daysDiference = 6 - new Date().getDay();
        var _startDate = new Date(new Date().setDate(new Date().getDate() - new Date().getDay()));
        var _endDate = new Date(new Date().setDate(new Date().getDate() + daysDiference));
        var _tempDate = new Date(_startDate);
        var _days = [];

        _startDate = new Date(_startDate.setHours(0, 0, 0, 0));
        _endDate = new Date(_endDate.setHours(23, 59, 59, 999));

        while (_tempDate <= _endDate) {
            _days.push([_tempDate.getDate(), _tempDate.getMonth()]);
            _tempDate.setDate(_tempDate.getDate() + 1);
        }

        return {
            startDate: _startDate,
            endDate: _endDate,
            days: _days
        };
    }

    var createObjects = function (results) {
        var personsArray = [];

        for (var i = 0; i < results.length; i++) {
            var person = {};
            person.name = results[i].Person.Title;
            person.picture = results[i].Picture1.Url;
            person.birthdayDate = new Date(new Date(results[i].BirthdayDate).setHours(0, 0, 0, 0));
            person.entryDate = new Date(new Date(results[i].StartDate1).setHours(0, 0, 0, 0));
            person.textDate = "";
            person.celebration = "";
            person.mainDate = new Date();

            var isInRange = checkRange(person.birthdayDate, person.entryDate);

            if (isInRange.isInRange) {
                person.textDate = isInRange.textDate;
                person.celebration = isInRange.celebration;
                person.mainDate = new Date(new Date(isInRange.mainDate).setFullYear(2016));

                personsArray.push(person);
            }
        }

        return personsArray;
    }

    var checkRange = function (birthdayDate, entryDate) {
        var dates = getDates();
        var isBDay = false;
        var _isInRange = false;
        var _celebration = "";
        var _textDate = "";
        var _mainDate = new Date();

        for (var i = 0; i < dates.days.length; i++) {
            if ((birthdayDate.getDate() === dates.days[i][0]) && (birthdayDate.getMonth() === dates.days[i][1])) {
                _celebration += "Cumpleaños";
                isBDay = true;
                _textDate = transformDate(birthdayDate);
                _isInRange = true;
                _mainDate = new Date(birthdayDate);
            }
            if ((entryDate.getDate() === dates.days[i][0])&&(entryDate.getMonth() === dates.days[i][1])) {
                if (isBDay) {
                    _celebration += "/";
                }
                else {
                    _textDate = transformDate(entryDate);
                }
                var anniversary = new Date().getFullYear() - entryDate.getFullYear();
                if (anniversary > 0) {
                    _celebration += "Aniversario " + anniversary + ((anniversary > 1) ? " años" : " año");
                    _isInRange = true;
                    _mainDate = new Date(entryDate);
                }
            }
        }

        return {
            isInRange: _isInRange,
            celebration: _celebration,
            textDate: _textDate,
            mainDate: _mainDate
        }
    }

    var transformDate = function (_date) {
        var strDate = "";
        var date = new Date(_date)
        switch (date.getMonth()) {
            case 0:
                strDate = date.getDate() + " de enero";
                break;
            case 1:
                strDate = date.getDate() + " de febrero";
                break;
            case 2:
                strDate = date.getDate() + " de marzo";
                break;
            case 3:
                strDate = date.getDate() + " de abril";
                break;
            case 4:
                strDate = date.getDate() + " de mayo";
                break;
            case 5:
                strDate = date.getDate() + " de junio";
                break;
            case 6:
                strDate = date.getDate() + " de julio";
                break;
            case 7:
                strDate = date.getDate() + " de agosto";
                break;
            case 8:
                strDate = date.getDate() + " de semptiembre";
                break;
            case 9:
                strDate = date.getDate() + " de octubre";
                break;
            case 10:
                strDate = date.getDate() + " de noviembre";
                break;
            case 11:
                strDate = date.getDate() + " de diciembre";
                break;
        }
        return strDate;
    }

    var sortDates = function (a, b) {
        if (a.mainDate < b.mainDate)
            return -1;
        else if (a.mainDate > b.mainDate)
            return 1;
        else
            return 0;
    }

    var beginProcess = function () {
        var birthdays = getData();

        birthdays.then(function (data) {
            var results = data.data.d.results;
            var persons = createObjects(results);
            $scope.personsArray = persons.sort(sortDates);
            var birthdayBirthdays = new Swiper('.swiper-birthdays', {
                nextButton: '.swiper-button-next_bd',
                prevButton: '.swiper-button-prev_bd',
                autoplay: 2500,
            });
        });
    }

    beginProcess();
};

BirthdaySection.controller(birthdayControllers);

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById("Birthdays"), ["BirthdaysApp"]);
});