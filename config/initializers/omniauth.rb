require 'omniauth/enterprise'
require 'net/http'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider 'CAS', :cas_server => ENV['CAS_SERVER']
end