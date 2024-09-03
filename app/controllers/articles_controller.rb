class ArticlesController < ApplicationController
  def index
    render json: Article.all, status: :accepted #status 202 no spec
    #render json: { message: 'carregado'}
  end
end
