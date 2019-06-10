    #if Rails.env.production?
     #   CarrierWave.configure do |config|
      #  config.root = Rails.root.join('tmp')
       # config.cache_dir = 'carrierwave'
        

        #config.fog_credentials = {
          # Configuration for Amazon S3
         # :provider               => 'AWS',                         # change var's name
          #:aws_access_key_id      => ENV['AWS_ACCESS_KEY'],         # change var's name
          #:aws_secret_access_key  => ENV['AWS_SECRET_KEY']
       # }
        #config.storage            =  ENV['S3_BUCKET']
        # config.storage            = :fog
        #end
    #end


    # config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
    aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
  }
  config.fog_directory  = ENV["AWS_BUCKET"]              # required
end
