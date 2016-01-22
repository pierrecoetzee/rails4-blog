require 'rails_helper'

describe Comment, :type => :model do

   let!(:comment){ build(:comment, commenter: 'Pierre coetzee', body: 'the comment body' ) }
   let(:comment_article) do
      build(:article, {title: 'Article name'}).tap do |article|
        article.comments << comment
      end
   end

   it 'belongs to an article' do
     expect{
       comment_article.save
     }.to change{Comment.count}.from(0).to 1
   end

end