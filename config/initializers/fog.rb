CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Settings.aws_access_key_id,
    :aws_secret_access_key  => Settings.aws_secret_access_key,
  }

  config.fog_directory = Settings.aws_bucket_name
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'} 

  if Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku

end
