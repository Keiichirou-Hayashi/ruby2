puts "じゃんけん..."

def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(終了)"
  $my_hand = gets.to_i
  if $my_hand == 3
    puts "ゲームが終了しました。"
    exit
  end
  puts "ポン！"
  puts "--------------------------"
  
  #じゃんけん
  $computer = rand(3)
  jankens = ["グー","チョキ","パー"]
  puts "私の手:#{jankens[$my_hand]}を出しました。"
  puts "相手の手:#{jankens[$computer]}を出しました。"
  puts "--------------------------"

  
  while $my_hand == $computer
    puts "あいこで"
    puts "0(グー) 1(チョキ) 2(パー) 3(終了)"
    $my_hand = gets.to_i
    puts "しょ！！"
    puts "私の手:#{jankens[$my_hand]}を出しました。"
    puts "相手の手:#{jankens[$computer]}を出しました。"
    puts "--------------------------"
  end
end

#あっち向いてホイ
def attimuite_hoi
  if($my_hand == 0 && $computer == 1)||($my_hand == 1 && $computer == 2)||($my_hand == 2 && $computer == 0)
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    my_finger = gets.to_i
    puts "ホイ！"
    computer2 = rand(4)
    attimuite = ["上","下","左","右"]
    puts "私:#{attimuite[my_finger]}を指さしました。"
    puts "相手:#{attimuite[computer2]}を向きました。"
    puts "--------------------------"
  else
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    my_finger = gets.to_i
    puts "ホイ！"
    computer2 = rand(4)
    attimuite = ["上","下","左","右"]
    puts "私:#{attimuite[my_finger]}を向きました。"
    puts "相手:#{attimuite[computer2]}を指さしました。"
    puts "--------------------------"
  end
end



while true
  game = janken
  next_game = attimuite_hoi
end