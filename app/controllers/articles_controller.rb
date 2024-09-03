class ArticlesController < ApplicationController
  def index
    Article.all
    respond_to do |format|
      format.html {}
      format.json{ render json: { message: 'carregado'} }
    end
  end
end
