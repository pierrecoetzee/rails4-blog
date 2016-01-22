// Angular Rails Template
// source: app/assets/javascripts/libs/angular-strap/src/modal/modal.tpl.html

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("libs/angular-strap/src/modal/modal.html", '<div class="modal" tabindex="-1" role="dialog" aria-hidden="true">\n  <div class="modal-dialog">\n    <div class="modal-content">\n      <div class="modal-header" ng-show="title">\n        <button type="button" class="close" aria-label="Close" ng-click="$hide()"><span aria-hidden="true">&times;</span></button>\n        <h4 class="modal-title" ng-bind="title"></h4>\n      </div>\n      <div class="modal-body" ng-bind="content"></div>\n      <div class="modal-footer">\n        <button type="button" class="btn btn-default" ng-click="$hide()">Close</button>\n      </div>\n    </div>\n  </div>\n</div>')
}]);

