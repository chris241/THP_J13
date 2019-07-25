class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :winner , :turn
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @board = Board.new
    @current_player = ""
    @winner = false
    @turn = 0
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    puts "#{@current_player.name}\'s turn. Choose your cell (1-9): "
    choice = gets.chomp.to_i
    if choice > 9 || choice < 1
      puts "warning: number must be betwenn 1 and 9"
    elsif @current_player.move(choice) != false
      @winner = @current_player if @current_player.winner?
      @turn += 1
      switch_player
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "Vous voulez rejouer oui(1) ou non(2)"
    nombre = gets.chomp.to_i
    if nombre == 1
      return 
    else
      system("exit")
    end
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if Player.win 
      puts ""
    elsif 
      puts "Match NUL"
    end
  end    

end