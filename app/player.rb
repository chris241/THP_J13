class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :name, :mark
  
  def initialize (name, mark, board)
    #TO DO : doit régler son nom et sa valeur
    @name = name
    @mark = mark
    @board = board
    puts "Veuillez entrer le nom du premier joueur"
    print ">"
    @name = gets.chomp 
    puts "Veuillez entrer le nom du premier joueur"
    print ">"
    @name = gets.chomp 
    print ">"
  end
  def move (cell)
  	@board.update_cell(self.mark)
  end
  def winner?
    wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8],
            [0, 4, 8], [2, 4, 6]]
    wins.each do |win|
      values = [cells[win[0]], cells[win[1]], cells[win[2]]]
      return true if values.include?(self.mark.to_s) &&
      ((values[0] == values[1]) && (values[1] == values[2]))
    end
    false
  end

  private
#permet de lier les cellules à la classe joueur
  def cells
    @board.cells
  end
end