# frozen_string_literal:true

module Workflow
  module Notion
    class Api
      def initialize(token = nil)
        @token = token || ENV['NOTION_TOKEN']
      end

      def me
        response = connection.get('users/me')
        raise 'bad response' unless response.success?

        User.new(response.body)
      end

      private

      def connection
        Faraday.new(url: 'https://api.notion.com/v1/',
                    headers: { 'Authorization' => "Bearer #{@token}", 'Notion-Version' => '2022-02-22' })
      end
    end
  end
end
