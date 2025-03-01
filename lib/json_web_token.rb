# frozen_string_literal: true

class JsonWebToken
  class << self
    AUTH_TOKEN_LIFETIME = ENV['AUTH_TOKEN_LIFETIME'] || 24
  
    def encode(payload, exp = AUTH_TOKEN_LIFETIME.to_i.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end
  
    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue StandardError
      nil
    end
  end
end