require 'omniauth-oauth2'

module Omniauth
  module Strategies
  	class Fidbacks < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, 'fidbacks'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => ENV['API_FIDBACKS_URL'] || 'http://api.fidbacks.com',
        :authorize_url => '/oauth/authorize'
      }

      # option :scope, 'r_basicprofile r_emailaddress'
      # option :fields, ['id', 'email-address', 'first-name', 'last-name', 'headline', 'location', 'industry', 'picture-url', 'public-profile-url']

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info['pseudo'] }

      info do
        {
          name: raw_info["name"],
          email: raw_info["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/api/v1/me.json").parsed
      end
    end   
  end
end
