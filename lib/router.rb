require 'controller'

class Router
  #On veux qu'un "routeur.rb" lancé par app.rb, lance automatiquement une instance "@controller"
  def initialize
    @controller = controller.new
  end

  #Rappel toi que l'on fait "Router.new.perform" dans app.rb => apres initialize, on définit donc perform.
  def perform
    puts "\nBIENVENUE DANS THE GOSSIP PROJECT ! \n\n"
    while true

    #on affiche le menu
    puts "Tu veux faire quoi jeune Mouss' ?"
    puts "1. Je veux créer un gossip"
    puts "4. Je veux quitter l'app"
    params.gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
      
      when 4
        puts "A bientot !"
        break
      
      else
        puts "Ce choix n'existe pas, merci de réessayer"

      end
    end
  end
end