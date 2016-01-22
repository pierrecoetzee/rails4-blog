// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/aside/aside.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/aside/aside.html", '<div class="aside" tabindex="-1" role="dialog">\n  <div class="aside-dialog">\n    <div class="aside-content">\n      <div class="aside-header" ng-show="title">\n        <button type="button" class="close" ng-click="$hide()">&times;</button>\n        <h4 class="aside-title" ng-bind="title"></h4>\n      </div>\n      <div class="aside-body" ng-bind="content"></div>\n      <div class="aside-footer">\n        <button type="button" class="btn btn-default" ng-click="$hide()">Close</button>\n      </div>\n    </div>\n  </div>\n</div>')
}]);

