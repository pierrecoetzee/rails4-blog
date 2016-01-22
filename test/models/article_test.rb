require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  test "that the article can save" do
  		article = articles(:one)
  	  assert article.save
  end
end
