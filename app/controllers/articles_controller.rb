class ArticlesController < ApplicationController
	
	def index
		render json: {results: Article.includes(:comments).all.order(order_and_direction) }
	end

	def new 
		@article = Article.new
	end

	def create

	  @article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
	  @article = Article.find(params[:id])
	  @article.update_attributes(article_params)
	  render json: {success: true}
	end

	def show
		@article = Article.find(params[:id])
	end

	def destroy
		@article = Article.find params[:id]
		@article.destroy
  	render json: {deleted: true}
	end

	private

	def order_and_direction
	  "#{params[:ordering].gsub(/\W/,'')} #{ params[:ordering].include?('-') ? 'desc' : 'asc'   }"
	end

	def article_params

	  if params[:comments].nil?
    	params.require(:article).permit(:id, :title, :text)
    else
			i = 0
			comments = params[:comments].inject(h = []) do |h, c|

				h[i] = {
				 body: c[:body],  article_id: params[:article][:id], id: c[:id]
				};

				i +=1
				h
			end

			{title: params[:article][:title] ,id: params[:article][:id], text: params[:article][:text]}.merge!(comments_attributes: comments)
    end
  end

end
