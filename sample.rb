class Player
  def hand
    puts "数字を入力してください。"
    puts "1: グー\n"
    puts "2: チョキ\n"
    puts "3:  パー\n"
    player_hand = gets.to_i
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)
    
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    

    jankens = ["グー", "チョキ","パー"]
    
  if (player_hand == 1 && enemy_hand == 0)||(player_hand == 2 && enemy_hand == 1)||(player_hand == 3 && enemy_hand == 2)
    puts "相手の手は#{jankens[enemy_hand]}です"
    puts "あいこです"
    return true
     elsif(player_hand == 1 && enemy_hand == 1)||(player_hand == 2 && enemy_hand == 2)||(player_hand == 3 && enemy_hand == 0)
    puts "相手の手は#{jankens[enemy_hand]}です"
    puts "あなたの勝ちです"
    return false

  elsif(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)||(player_hand == 3 && enemy_hand == 1)
    puts "相手の手は#{jankens[enemy_hand]}です"
    puts "あなたの負けです"
    return false
  else 
    puts "1~3の数字を入力してください"
    return true
    end
    end
end
    
player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true

while next_game
 next_game = janken.pon(player.hand, enemy.hand)
end