json.content @message.content
json.image @message.image.url
json.date @message.created_at.strftime("%Y/%m/%d/%w %H:%M:%S")
json.user_name @message.user.name
json.id @message.id