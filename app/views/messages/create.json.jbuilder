json.id @message.id
json.user_name @message.user.name
json.date @message.created_at.strftime("%Y/%m/%d %H:%M")
json.content @message.content
json.image @message.image_url

# json.(@message, :content, :image)
# json.time @message.created_at.strftime("%Y/%m/%d %H:%M")
# json.user_name @message.user.name
# #idもデータとして渡す
# json.id @message.id