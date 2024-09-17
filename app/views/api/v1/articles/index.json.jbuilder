#json.message 'teste batata'

json.data @articles do |article|
  json.title article.title
end
