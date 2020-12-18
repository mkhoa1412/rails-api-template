
REDIS_DATABASE_SIDEKIQ = ENV['REDIS_DATABASE_SIDEKIQ'] || 1
REDIS_HOST = ENV['REDIS_HOST'] || 'localhost'
REDIS_PORT = ENV['REDIS_PORT'] || '6379'

Sidekiq.configure_server do |config|
  config.redis = {
    url: "redis://#{REDIS_HOST}:#{REDIS_PORT}/#{REDIS_DATABASE_SIDEKIQ}"
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: "redis://#{REDIS_HOST}:#{REDIS_PORT}/#{REDIS_DATABASE_SIDEKIQ}"
  }
end
