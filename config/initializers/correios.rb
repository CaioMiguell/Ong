Correios::CEP.configure do |config|
    config.log_enabled = false
    config.logger = Rails.logger
    config.request_timeout = 3 # seconds
end