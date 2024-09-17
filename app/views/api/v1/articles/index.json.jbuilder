#json.message 'teste batata'

json.data @articles do |article|
  json.id      article.id.to_s
  json.title   article.title
  json.content article.content
end
