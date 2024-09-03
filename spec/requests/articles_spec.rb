require 'rails_helper'

RSpec.describe 'Articles' do
  before(:each) { Article.create(title: 'art 2', content: 'conteudo do art 2') }

  context "GET /articles" do
    it 'responds with status Ok' do
      get '/articles.json'
      expect(response).to have_http_status(:ok)
    end

    it 'responds with correct persistes article json' do
      get '/articles.json'
      expect(response.body).to include('art 2')
      expect(response.body).to include('conteudo do art 2')
    end
  end
end
