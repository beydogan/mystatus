require 'lotus/model'

class TogglEntry
  include Lotus::Entity
  attributes :start, :description

  def self.current
    toggl = Web::API::Toggl.new
    self.new toggl.current_entry
  end
end