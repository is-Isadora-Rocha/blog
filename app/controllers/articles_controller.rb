class ArticlesController < ApplicationController
  def index
    Article.all

    render json: { message: 'carregado'}

    # para retornar status 202 no spec
    #render json: { message: 'carregado'}, status: :accepted

  end
end
