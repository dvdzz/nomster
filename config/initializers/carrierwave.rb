    #if Rails.env.production?
        CarrierWave.configure do |config|
        config.root = Rails.root.join('tmp')
        config.cache_dir = 'carrierwave'

        config.fog_credentials = {
          # Configuration for Amazon S3
          :provider               => 'AWS',                         # change var's name
          :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],         # change var's name
          :aws_secret_access_key  => ENV['AWS_SECRET_KEY']
        }
        config.fog_directory      =  ENV['S3_BUCKET']
        end
    #end