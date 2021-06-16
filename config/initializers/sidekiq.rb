
require "sidekiq/web"
require "socket"
LIVENESS_PORT = 8080

redis_url = ENV.fetch("REDIS_URL") { "redis://localhost:6379" }

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url, id: nil }
end