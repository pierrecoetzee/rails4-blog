// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/tooltip/tooltip.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/tooltip/tooltip.html", '<div class="tooltip in" ng-show="title">\n  <div class="tooltip-arrow"></div>\n  <div class="tooltip-inner" ng-bind="title"></div>\n</div>')
}]);

