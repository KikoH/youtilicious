CarrierWave.configure do |config|
 config.storage = :fog
 config.fog_credentials = {
    :provider               => 'AWS',                       # required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],       # required
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"],        # required
    :region                 => 'us-east-1'
  }
  #config.asset_host = 'd3w1xupb5k7gcl.cloudfront.net'
  config.fog_directory  = ENV["AWS_BUCKET"]                 # required
end