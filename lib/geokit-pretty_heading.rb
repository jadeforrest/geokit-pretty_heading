module Geokit
  module Prettyheading

    def self.heading(from_latlng, to_latlng)
      heading = Geokit::LatLng.heading_between(from_latlng, to_latlng)

      # see http://en.wikipedia.org/wiki/Boxing_the_compass
      sixteen_points_centered = (heading / (360/16) + 1)
      if sixteen_points_centered >= 17
        sixteen_points_centered = sixteen_points_centered - 17
      end
      case sixteen_points_centered.to_i
      when 1 then
        "North"
      when 2 then
        "North-northeast"
      when 3 then
        "Northeast"
      when 4 then
        "East-Northeast"
      when 5 then
        "East"
      when 6 then
        "East-southeast"
      when 7 then
        "Southeast"
      when 8 then
        "South-southeast"
      when 9 then
        "South"
      when 10 then
        "South-Southwest"
      when 11 then
        "Southwest"
      when 12 then
        "West-southwest"
      when 13 then
        "West"
      when 14 then
        "West-northwest"
      when 15 then
        "Northwest"
      when 16 then
        "North-northwest"
      else
        "Invalid"
      end
    end

  end
end
