class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        role = self.characters.map do |c|
            c.name
        end

        features = self.shows.map do |s|
            s.name
        end
        role.concat(features).join(" - ")
    end
end