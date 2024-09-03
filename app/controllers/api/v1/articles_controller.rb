class Api::V1::ArticlesController < ActionController::API
  def index
    render json: Article.all, status: :ok
    #render json: { message: 'carregado'}
  end
end
