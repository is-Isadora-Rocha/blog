class Api::V1::ArticlesController < ActionController::API
  def index
    render json: Article.all, status: :ok
    #render json: { message: 'carregado'}
  end
end


# ActionController::API = para deixar a API mais leve e mais rápida, sem usar toda a base completa do aplicattion controller
