class ArticlesController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :set_article, except: [:create, :index]

  def index
    @articles = Article.all
    @sorted_articles = @articles.order(:sub_topic)
  end

  def create
    @article = @topic.articles.create(article_params)
  end

  def update
    @article.update article_params
    redirect_to topic_articles_path(@topic)
  end

  def destroy
    if @article.destroy
      flash[:success] "article deleted!"

    else
      flash[:error] "article not deleted!"
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def set_article
    @article = @topic.articles.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:sub_topic, :description)
  end
end
