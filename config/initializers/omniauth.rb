Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['facebook_KEY'], ENV['facebook_SECRET']
  provider :github, ENV['github_KEY'], ENV['github_SECRET']
end
