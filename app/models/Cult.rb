class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower, date)
        BloodOath.new(self, follower, date)
    end

    def get_blood_oaths
        BloodOath.all.select{|oath| oath.cult == self}
    end

    def cult_population
        self.get_blood_oaths.length
    end

    def self.find_by_name(name)
        Cult.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        Cult.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select{|cult| cult.founding_year == founding_year}
    end
end
