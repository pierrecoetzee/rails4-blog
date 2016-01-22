// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/datepicker/datepicker.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/datepicker/datepicker.html", '<div class="dropdown-menu datepicker" ng-class="\'datepicker-mode-\' + $mode" style="max-width: 320px;">\n<table style="table-layout: fixed; height: 100%; width: 100%;">\n  <thead>\n    <tr class="text-center">\n      <th>\n        <button tabindex="-1" type="button" class="btn btn-default pull-left" ng-click="$selectPane(-1)">\n          <i class="{{$iconLeft}}"></i>\n        </button>\n      </th>\n      <th colspan="{{ rows[0].length - 2 }}">\n        <button tabindex="-1" type="button" class="btn btn-default btn-block text-strong"  ng-click="$toggleMode()">\n          <strong style="text-transform: capitalize;" ng-bind="title"></strong>\n        </button>\n      </th>\n      <th>\n        <button tabindex="-1" type="button" class="btn btn-default pull-right" ng-click="$selectPane(+1)">\n          <i class="{{$iconRight}}"></i>\n        </button>\n      </th>\n    </tr>\n    <tr ng-show="showLabels" ng-bind-html="labels"></tr>\n  </thead>\n  <tbody>\n    <tr ng-repeat="(i, row) in rows" height="{{ 100 / rows.length }}%">\n      <td class="text-center" ng-repeat="(j, el) in row">\n        <button tabindex="-1" type="button" class="btn btn-default" style="width: 100%" ng-class="{\'btn-primary\': el.selected, \'btn-info btn-today\': el.isToday && !el.selected}" ng-click="$select(el.date)" ng-disabled="el.disabled">\n          <span ng-class="{\'text-muted\': el.muted}" ng-bind="el.label"></span>\n        </button>\n      </td>\n    </tr>\n  </tbody>\n</table>\n</div>')
}]);

