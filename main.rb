


line = '-----------------'

match = 0
yourWin = 0
comWin = 0
yourFist = 2
comFist = 2


puts "Game start!"

while match == 0 do
  
  puts " "
  puts "<あなたのターンです>"
  puts " "

  puts "指スマ..."
  puts "上げる指の本数を入力してください(上限は#{yourFist}本)"
  yourFinger = gets.to_i

  if yourFinger < 0 || yourFinger > yourFist
    puts "無効な数字です 最初に戻ります"
    redo
  end
  
  puts "宣言する数を入力してください(上限は#{yourFinger + comFist})"
  yourClaim = gets.to_i

  if yourClaim < 0
    puts "無効な数字です 最初に戻ります"
    redo
  end
  
  comFinger = rand(comFist)

  puts " "
  puts "あなたは指を#{yourFinger}本上げ、#{yourClaim}と宣言しました(push Enter)"
  enterPush = gets
  puts "COMは指を#{comFinger}本上げました"
  
  if yourClaim == yourFinger + comFinger
    puts line
    puts "成功しました 拳を1つ下ろしてください"
    puts line
    yourFist -= 1
    
     if yourFist == 0
        puts " "
        puts "あなたの勝利です!"
        break
     end
    
    puts " "
    puts "<COMのターンです>"
    puts " "
    puts "指スマ..."
    puts "上げる指の本数を入力してください(上限は#{yourFist}本)"
    yourFinger = gets.to_i
    
    if yourFinger < 0 || yourFinger > yourFist
    puts "無効な数字です 最初に戻ります"
    redo
    end

    comFinger = rand(comFist)
    comClaim = rand(comFinger..comFinger + yourFist)

    puts " "
    puts "あなたは指を#{yourFinger}本上げました(push Enter)"
    enterPush = gets
    puts "COMは指を#{comFinger}本上げ、#{comClaim}と宣言しました"
    puts " "
    if comClaim == yourFinger + comFinger
      puts line
      puts "COMが成功しました COMが拳を1つ下ろしました"
      puts line
      comFist -= 1

      if comFist == 0
        puts " "
        puts "COMの勝利です!"
        break
      end
      
    else
      puts line
      puts "COMが失敗しました。"
      puts line
    end
    
  else
    puts line
    puts "失敗しました"
    puts line

    if yourClaim < yourFinger
      puts "Warn:宣言した数よりも上げた指の本数の方が大きいため必ず失敗になります"
    end

    if yourClaim > yourFinger + comFist
      puts "Warn:起こりうる値の上限を超えているため必ず失敗になります"
    end
    
    puts ""
    puts "<COMのターンです>"
    puts " "
    puts "指スマ..."
    puts "上げる指の本数を入力してください(上限は#{yourFist}本)"
    yourFinger = gets.to_i

    if yourFinger < 0 || yourFinger > yourFist
    puts "無効な数字です 最初に戻ります"
    redo
    end

    comFinger = rand(comFist)
    comClaim = rand(comFinger..comFinger + yourFist)

    puts " "
    puts "あなたは指を#{yourFinger}本上げました(push Enter)"
    enterPush = gets
    puts "COMは指を#{comFinger}本上げ、#{comClaim}と宣言しました"
    puts " "
    if comClaim == yourFinger + comFinger
      puts line
      puts "COMが成功しました COMが拳を1つ下ろしました"
      puts line
      comFist -= 1

       if comFist == 0
        puts " "
        puts "COMの勝利です!"
        break
       end
      
    else
      puts line
      puts "COMが失敗しました。"
      puts line
    end
  end
end