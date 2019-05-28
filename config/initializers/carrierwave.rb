# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                                                         # required
  config.fog_credentials = {
    provider:             'AWS',                                                          # required
    aws_access_key_id:     ENV["AKIAWWV3AVCC7LDPBKGL"],                                   # required
    aws_secret_access_key: ENV["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"],
    region:                ENV["US_East"]                                                        # required
  }
  config.fog_directory  = ENV["nomsterpics"]                                              # required
end