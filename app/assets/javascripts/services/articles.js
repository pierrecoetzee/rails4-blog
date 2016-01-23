app.factory('Article', ['$resource', function ($resource) {
	return $resource("/articles/:id/", {id: '@id'}, {
  		update: {
  			method: 'PUT'
  		}
  	});
}]);

app.service('ArticleService',['Article','$q', 'toaster', function (Article, $q, toaster) {

	var self =  {
	  'article': new Article({'title': '', 'text': '', 'comments': [{'body': 'new'}]}),
	  'isSaving': false,
	  'isLoading': false,
	  'ordering': 'text',
	  'isDeleting': false,
		'articles': [],
		'selectedArticle': null,
		'addArticle': function (article) {
			self.articles.push(article)
		},
		'doOrder': function(order){

		  if (self.isLoading == true){
		    return false;
		  }
		  else{
				self.ordering = order
				self.loadArticles()
		  }

		},
		'loadArticles': function(){

			self.isLoading = true
			self.articles = []
      self.selectedArticle = null

			var params = {
			  'ordering': self.ordering
			}

      Article.get(params, function(data){

                  	  angular.forEach(data.results, function(article){
                  	    self.articles.push(new Article(article));
                  	  });
                  	  self.isLoading = false
                  	});
		},
		'deleteArticle': function(article){
			self.isDeleting = true;
			article.$remove().then(function () {
				self.isDeleting = false;
				var index = self.articles.indexOf(article);
				self.articles.splice(index, 1);
				self.selectedArticle = null;
				toaster.pop('success', 'Deleted article');
			});
		},
		'createArticle': function (updatePopupModal, article) {

			var d = $q.defer();
			self.isSaving = true;

			Article.save(article).$promise.then(function () {
				updatePopupModal.hide();
				self.isSaving = false;
				self.selectedArticle = null;
				self.articles = [];
				self.loadArticles();
				toaster.pop('success', 'Created ' + article.title);
				d.resolve()
			});
			return d.promise;
		},
		'updateArticle': function (updatePopupModal, article) {

				self.isSaving = true;

				toaster_title = "Updated " +  article.title

				article.$update().then(function (data) {
					toaster.pop('success', toaster_title );
					self.isSaving = false;
					self.clearArticles()
					self.loadArticles()
					updatePopupModal.hide();
				});
    },
    'clearArticles': function(){
      self.articles = []
      self.selectedArticle = null
    }
	}

	self.loadArticles();
	return self
}]);