// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/typeahead/typeahead.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/typeahead/typeahead.html", '<ul tabindex="-1" class="typeahead dropdown-menu" ng-show="$isVisible()" role="select">\n  <li role="presentation" ng-repeat="match in $matches" ng-class="{active: $index == $activeIndex}">\n    <a role="menuitem" tabindex="-1" ng-click="$select($index, $event)" ng-bind="match.label"></a>\n  </li>\n</ul>')
}]);

