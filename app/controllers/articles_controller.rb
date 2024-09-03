class ArticlesController < ApplicationController
  def index
    Article.all

    render json: { message: 'carregado'}
    
  end
end
