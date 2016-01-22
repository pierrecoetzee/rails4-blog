require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do

    let(:saved_article) { create(:with_comments) }

    describe '#index' do

      before do
        expect(saved_article.comments.length).to eq(5)
        get :index, {article_id: saved_article.id }
      end

      it 'sets the comments instance variable' do
        expect(assigns(:comments)).to eq(saved_article.comments)
      end

      it 'renders the index' do
        expect(response).to render_template('comments/index')
      end
    end
end