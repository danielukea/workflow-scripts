# frozen_string_literal:true

require 'thor'
require_relative 'lib/workflow'

class Cli < Thor
  desc 'get_me', 'get the notion user'
  def get_me
    Workflow.get_me
  end

  desc 'get_databases', 'gets all of the users databases'
  def get_databases; end
end
