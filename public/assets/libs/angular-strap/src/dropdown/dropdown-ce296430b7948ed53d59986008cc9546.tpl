// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/dropdown/dropdown.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/dropdown/dropdown.html", '<ul tabindex="-1" class="dropdown-menu" role="menu">\n  <li role="presentation" ng-class="{divider: item.divider}" ng-repeat="item in content" >\n    <a role="menuitem" tabindex="-1" ng-href="{{item.href}}" ng-if="!item.divider && item.href" target="{{item.target || \'\'}}" ng-bind="item.text"></a>\n    <a role="menuitem" tabindex="-1" href="javascript:void(0)" ng-if="!item.divider && item.click" ng-click="$eval(item.click);$hide()" ng-bind="item.text"></a>\n  </li>\n</ul>')
}]);

