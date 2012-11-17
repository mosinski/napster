AWS::facebook::Base.establish_connection!(
  :access_key_id     => ENV['facebook_KEY'],
  :secret_access_key => ENV['facebook_SECRET']
)
