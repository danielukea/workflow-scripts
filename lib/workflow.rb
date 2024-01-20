# frozen_string_literal: true

require 'dotenv/load'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module Workflow
  def self.get_me
    puts Notion::Api.new(ENV['NOTION_TOKEN']).me.print
  end
end

loader.eager_load
