app.controller('ArticleListCtrl', ['$scope', '$modal', 'ArticleService', function($scope,$modal,ArticleService){

  var comment = new Object()
  comment.body = null
  comment.article_id = null;

  $scope.title = 'Manage your articles'
  $scope.sortBy = {order: 'title'}
  $scope.isCreating = false

  $scope.blogs = ArticleService

  $scope.$watch('sortBy.order', function (newVal, oldVal) {
    if (angular.isDefined(newVal)){
      $scope.blogs.doOrder(newVal);
    }
  })

  $scope.closeUpdateModal = function(){
      $scope.blogs.selectedArticle = null
      $scope.updateModal.hide()
  }

  $scope.save = function () {

    if ($scope.blogs.selectedArticle.id == null || $scope.blogs.selectedArticle.id ==undefined){
        $scope.blogs.createArticle($scope.updateModal, $scope.blogs.selectedArticle)
      return
    }

    $scope.blogs.updateArticle($scope.updateModal, $scope.blogs.selectedArticle)
  };

  $scope.delete = function () {
     $scope.blogs.deleteArticle($scope.blogs.selectedArticle)
  };

  $scope.showUpdateModal = function(){

    $scope.isCreating = false
    $scope.blogs.article = {'title': '', 'text': '', 'comments': [{'body': 'new'}]}

    if ($scope.blogs.selectedArticle == null){
      $scope.isCreating = true
      $scope.blogs.selectedArticle = null;

      $scope.blogs.selectedArticle = $scope.blogs.article
    }

    $scope.updateModal = $modal({
      scope: $scope,
      template: 'article/create_or_update.html',
      show: true
    })
  }

  $scope.showArticleModal = function(){
    $scope.showSelectedModal = $modal({
      scope: $scope,
      template: 'article/show.html',
      show: true
    })
  }
}])