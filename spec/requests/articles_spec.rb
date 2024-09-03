require 'rails_helper'

RSpec.describe 'Articles' do
  context "GET" do
    it '/articles' do
      get '/articles.json'

      expect(response).to have_http_status(:ok)
      #expect(response).to have_http_status(:accepted) #status 202
    end
  end
end
