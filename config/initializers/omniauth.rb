OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '290658924471736', '94219540d5a632e0ab955aff882997b0'
end