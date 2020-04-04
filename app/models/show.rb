class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  attr_accessor :day, :season
  
  def actors_list
    self.characters.map do |c|
      c.actor.full_name
    end
  end
  
end