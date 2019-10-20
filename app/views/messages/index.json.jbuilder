json.array! @messages do |message|
  json.content  message.content
  json.name     message.user.name
  json.time     message.created_at.
  json.image_url message.image.url
  json.id       message.id
end