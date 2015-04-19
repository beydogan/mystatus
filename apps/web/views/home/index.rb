module Web::Views::Home
  class Index
    include Web::View

    def entry
      @t=TogglEntry.new
    end
  end
end
