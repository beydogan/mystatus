require 'httparty'
module Web
  module API
    class Toggl
      include HTTParty
      base_uri 'www.toggl.com/api/v8/'
      TOKEN = ENV['TOGGL_TOKEN']

      def current_entry
        response = self.class.get('/time_entries/current', basic_auth: {username: TOKEN, password: 'api_token'})
        return response.parsed_response["data"]
      end
    end
  end
end