# json.(@message, :content, :image_url)
# json.date @message.created_at.strftime("%Y/%m/%d %H:%M")
# json.user_name @message.user.name



# json.(@message, :content, :image_url)
json.content @message.content
json.image @message.image_url
json.date @message.created_at.strftime("%Y/%m/%d %H:%M")
json.user_name @message.user.name
json.id @message.id