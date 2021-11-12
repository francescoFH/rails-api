class ArticlesController < ApplicationController
  skip_before_action :authorize!, only: %i[index show]

  include Paginable

  def index
    articles = Article.recent
    paginated = paginate(Article.recent)
    render_collection(paginated)
  end

  def show
    article = Article.find(params[:id])
    render json: serializer.new(article)
  end

  def create

  end

  def serializer
    ArticleSerializer
  end

end
