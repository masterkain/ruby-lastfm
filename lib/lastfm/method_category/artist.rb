class Lastfm
  module MethodCategory
    class Artist < Base
      regular_method :get_info, [:artist], [] do |response|
        response.xml['artist']
      end

      regular_method :get_events, [:artist], [] do |response|
        response.xml['events']['event']
      end

      regular_method :get_similar, [:artist], [] do |response|
        response.xml['similarartists']['artist']
      end
      
      regular_method :get_tags, [:artist], [[:user, nil], [:mbid, nil], [:autocorrect, nil]] do |response|
        response.xml['tags']['tag']
      end
    end
  end
end
