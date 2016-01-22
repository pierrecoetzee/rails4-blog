// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/popover/popover.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/popover/popover.html", '<div class="popover">\n  <div class="arrow"></div>\n  <h3 class="popover-title" ng-bind="title" ng-show="title"></h3>\n  <div class="popover-content" ng-bind="content"></div>\n</div>')
}]);

