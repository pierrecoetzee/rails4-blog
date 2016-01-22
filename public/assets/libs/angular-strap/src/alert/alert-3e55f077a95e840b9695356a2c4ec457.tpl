// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/alert/alert.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/alert/alert.html", '<div class="alert" ng-class="[type ? \'alert-\' + type : null]">\n  <button type="button" class="close" ng-if="dismissable" ng-click="$hide()">&times;</button>\n  <strong ng-bind="title"></strong>&nbsp;<span ng-bind-html="content"></span>\n</div>')
}]);

