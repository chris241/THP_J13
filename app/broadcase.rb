class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :cell1 , :cell2
  
  def initialize (number)
  	cell1 = self.cells[number - 1]
  	cell2 = self.cells[number - 1]
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
     if cell1 == "X" ||  cell2 == "O"
      false
    else
      true
    end
  end
end