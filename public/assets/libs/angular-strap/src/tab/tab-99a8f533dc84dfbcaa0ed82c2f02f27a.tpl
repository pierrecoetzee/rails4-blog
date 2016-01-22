// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/tab/tab.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/tab/tab.html", '<ul class="nav" ng-class="$navClass" role="tablist">\n  <li role="presentation" ng-repeat="$pane in $panes track by $index" ng-class="[ $isActive($pane, $index) ? $activeClass : \'\', $pane.disabled ? \'disabled\' : \'\' ]">\n    <a role="tab" data-toggle="tab" ng-click="!$pane.disabled && $setActive($pane.name || $index)" data-index="{{ $index }}" ng-bind-html="$pane.title" aria-controls="$pane.title"></a>\n  </li>\n</ul>\n<div ng-transclude class="tab-content">\n</div>')
}]);

