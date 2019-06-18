CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    :provider           =>   'AWS',                        # required
    :aws_access_key_id  =>   ENV["AWS_ACCESS_KEY"],        # required
    :aws_secret_access_key =>ENV["AWS_SECRET_KEY"],
    #:region                => 'us-east-1'               # required
  }
  config.fog_directory  = ENV["AWS_BUCKET"]
  #config.fog_region    = ENV["AWS_REGION"]              # required
end
