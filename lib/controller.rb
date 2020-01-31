require 'gossip'
require 'view'

class Controller

  def initialize(view)
    @view = view.new
  end

  def create_gossip
    @gossip = Gossip.new
    gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    gossip.save
  end

end