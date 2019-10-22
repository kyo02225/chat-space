require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'ap-northeast-1' #例 'ap-northeast-1'
  }

  config.fog_directory  = 'arn:aws:s3:::kyo.chat-space.image-box'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/kyo.chat-space.image-box'
end