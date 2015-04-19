module Web::Views::Home
  class Index
    include Web::View

    def entry
      TogglEntry.current
    end
  end
end
