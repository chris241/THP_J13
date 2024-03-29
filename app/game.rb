require '/lib/app/BoardCase'
class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :win , :turn
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @board = BoardCase.new
    @current_player = ""
    @win = false
    @turn = 0
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    puts "#{@current_player.name}\'s turn. Choose your cell (1-9): "
    choice = gets.chomp.to_i
    if choice > 9 || choice < 1
      puts "warning: number must be betwenn 1 and 9"
    elsif @current_player.move(choice) != false
      @win = @current_player if @current_player.winner?
      @turn += 1
      switch_player
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "Vous voulez faire un autre jeux?"
    i = true
    if i 
      puts "Nouveau jeux"
    else
      system("exit")
    end
  end
  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    names = get_names
    @player1 = Player.new(names[0], :X, @board)
    @player2 = Player.new(names[1], :O, @board)
    @current_player = @player1
    @board.show_board
    turn until @win || @turn == 9
    if @winner
      puts "#{@win.name} wins!"
    else
      puts "Draw!"
    end
  end    
end
game1 =Game.new