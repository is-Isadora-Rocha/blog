class Api::V1::ArticlesController < ActionController::API
  def index
    @articles = Article.all
    #render json: Article.all, status: :ok
  end
end


# ActionController::API = para deixar a API mais leve e mais rápida, sem usar toda a base completa do aplicattion controller
