class ApplicationConfig
  class OmniAuthProvider < Struct.new(:key, :secret)
  end

  def github
    OmniAuthProvider.new(ENV['github_KEY'], ENV['github_SECRET'])
  end

  def facebook
    OmniAuthProvider.new(ENV['facebook_KEY'], ENV['facebook_SECRET'])
  end
  end

AppConfig = ApplicationConfig.new 
