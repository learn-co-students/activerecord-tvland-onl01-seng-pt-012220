class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  # def build_show(hash={})
  #   show = Show.new
  #   show.name = hash.fetch(:name)
  #   show.characters << self
  # end
  
  def build_network(hash={})
    net = Network.new
    net.call_letters = hash.fetch(:call_letters)
    self.show.network = net
  end

end