class User < ActiveRecord::Base

	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.name
			user.email = auth.info.email
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
			user.city = auth.info.user_location
			user.oauth_token = auth.credentials.oauth_token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.save!
		end
	end
end
