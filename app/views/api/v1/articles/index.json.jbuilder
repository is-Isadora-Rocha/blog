#json.message 'teste batata'

json.data @articles do |article|
  json.id      article.id
  json.title   article.title
  json.content article.content
end
