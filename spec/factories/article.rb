FactoryGirl.define do
  sequence :title do |i|
     "This is a title for Article #{ i }"
  end
end

FactoryGirl.define do
  factory :article do

    title

    ignore do
     comment_count 5
    end

    factory :with_comments do
      after(:create) do |article, evaluator|
         (1..5).each do |i|
            article.comments.create(attributes_for(:comment, {body: "Test comment: #{ i } "}))
         end
         #create_list(:comment, evaluator.comment_count, article: article )
      end
    end
  end
end
