class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :array_broad , :count_turn 

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @array_broad = array_broad
    count_turn[1..9]
    @count_turn  = count_turn
  end

  def play_turn(array_broad)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    puts "Veuillez entrer un nombre entre 1-9"
    for @count_turn.each in 1..9
      if @count_turn.value  =="X"
        return
      else
        @count_turn.value =="O"
    end
  end
  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    array_broad = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8],[0, 4, 8], [2, 4, 6]]
    array_broad.each do |vic|
      values = [cells[[0]], cells[array_broad[1]], cells[array_broad[2]]]
      return true if values.include?(self.mark.to_s) &&
      ((values[0] == values[1]) && (values[1] == values[2]))
    end
    false
  end
  if array_broad.values !=array_broad.values
    puts "match Nul"
  end
end
