require 'lotus/model'

class TogglEntry
  include Lotus::Entity
  attributes :start, :description

  def self.current
    puts "GET########"
    toggl = Web::API::Toggl.new
    entry = toggl.current_entry

    if entry
      self.new entry
    else
      nil
    end
  end
end