# frozen_string_literal: true

module Workflow
  module Notion
    class User
      attr_reader :id, :name

      def initialize(body)
        body = JSON.parse(body)
        @id = body['id']
        @name = body['name']
      end

      def print
        "id: #{@id}, name: #{@name}"
      end
    end
  end
end
