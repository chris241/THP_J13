class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :name, :mark
  
  def initialize (name, mark, board)
    #TO DO : doit régler son nom et sa valeur
    @name = name
    @mark = mark
    @board = board
  end
   def get_names
    puts "Le nom du Joueuer X: "
    name1 = gets.chomp
    puts "Le nom du Joueur 0: "
    name2 = gets.chomp
    name = [name1, name2]
  end
end
 

