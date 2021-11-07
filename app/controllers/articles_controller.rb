class ArticlesController < ApplicationController
  include Paginable

  def index
    articles = Article.recent
    paginated = paginate(Article.recent)
    render_collection(paginated)
  end

  def serializer
    ArticleSerializer
  end
end
