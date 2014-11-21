require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Frontdesk < OmniAuth::Strategies::OAuth2
      def request_phase
        super
      end

      uid {
        user_data['id']
      }

      info do
        {
          'email' => user_data['email'],
          'name' => user_data['name']
        }
      end

      def user_data
        # access_token.options[:mode] = :query
        unless @user_data
          json = access_token.get('/api/v2/front/people/me.json').parsed
          OmniAuth.logger.info json
          @user_data = json['people'].first
        end

        @user_data
      end
    end
  end
end