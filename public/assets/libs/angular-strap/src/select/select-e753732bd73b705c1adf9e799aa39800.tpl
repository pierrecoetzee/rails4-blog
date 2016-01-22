// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/select/select.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/select/select.html", '<ul tabindex="-1" class="select dropdown-menu" ng-show="$isVisible()" role="select">\n  <li ng-if="$showAllNoneButtons">\n    <div class="btn-group" style="margin-bottom: 5px; margin-left: 5px">\n      <button type="button" class="btn btn-default btn-xs" ng-click="$selectAll()">{{$allText}}</button>\n      <button type="button" class="btn btn-default btn-xs" ng-click="$selectNone()">{{$noneText}}</button>\n    </div>\n  </li>\n  <li role="presentation" ng-repeat="match in $matches" ng-class="{active: $isActive($index)}">\n    <a style="cursor: default;" role="menuitem" tabindex="-1" ng-click="$select($index, $event)">\n      <i class="{{$iconCheckmark}} pull-right" ng-if="$isMultiple && $isActive($index)"></i>\n      <span ng-bind="match.label"></span>\n    </a>\n  </li>\n</ul>')
}]);

