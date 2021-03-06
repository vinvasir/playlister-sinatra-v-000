class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    
    def slug
        self.name.split(" ").join("-").downcase
    end
    
    def self.find_by_slug(slug)
       self.all.detect {|instance| instance.slug == slug} 
    end
end