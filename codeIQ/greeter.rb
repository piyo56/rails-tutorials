
class Greeter
  # 【仕様1】
  # 「現在時刻」に応じて、挨拶の内容を下記のようにそれぞれ返す機能を作成したい。
  # (タイムゾーンはAsia/Tokyoとする)
  # 朝(05:00:00以上 12:00:00未満)の場合、「おはようございます」と返す
  # 昼(12:00:00以上 18:00:00未満)の場合、「こんにちは」と返す
  # 夜(18:00:00以上 05:00:00未満)の場合、「こんばんは」と返す
  # 例: 13時にgreeter.greet()を呼ぶと”こんにちは”と返す
  def greet
    now_hour = Time.now.hour

    if now_hour >= 5 && now_hour <12
      puts "おはようございます"
    elsif now_hour >= 12 && now_hour <18
      puts "こんにちは"
    else
      puts "こんばんは"
    end
  end
end


g = Greeter.new
g.greet
