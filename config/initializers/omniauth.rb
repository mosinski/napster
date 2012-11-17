Rails.application.config.middlew are.use OmniAuth::Builder do
 provider :facebook, AppConfig.facebook.key, AppConfig.facebook.secret
 provider :github, AppConfig.github.key, AppConfig.github.secret
end

