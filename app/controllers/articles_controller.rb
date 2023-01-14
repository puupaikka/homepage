class ArticlesController < ApplicationController
def index
    @articles = Article.all

end
def show
    @article = Article.find(params[:id])
    begin
      @lastarticle = Article.find((params[:id].to_i-1).to_s)
    rescue
    end
    
    begin
      @nextarticle = Article.find((params[:id].to_i+1).to_s)
    rescue
    end
end

def new
    @article = Article.new
  end

def create
@article = Article.new(article_params)

    if @article.save
        redirect_to @article
    else
        render :new, status: :unprocessable_entity
    end
end

private
def article_params
    params.require(:article).permit(:title, :body)
end
end

