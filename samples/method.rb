# to_sメソッド (数字を文字列に変換)
puts " 2 + 2 = " + 4.to_s

# pメソッド(データ型の種類を確認)
p "こんにちは"
p 1

puts "1"
p "1"

# printメソッド(改行を行わずに処理結果を表示)
puts "私の"
puts "名前は"
puts "あすかです。"
puts "---------------"
print "私の"
print "名前は"
print "あすかです。"

# 複数のデータを出力
puts "お", "は", "よ", "う"
p "お", "は", "よ", "う"
print "お", "は", "よ", "う"
puts"----------------------"

# ヒアドキュメント(複数行の文字を出力したい場合)
puts <<~TEXT
私の
名前は
あすかです
TEXT

# putsを使用した場合
puts "おはよう"
puts "こんにちは"
puts "こんばんは"

# ヒアドキュメントを使用した場合
puts <<~TEXT
おはよう
こんにちは
こんばんは
TEXT

# 合計金額を表示するメソッド
# ()の中のprice, numが引数を受け取る変数
# 引数にデフォルト値を設定
def disp_sum(price = 1980, num = 20)

  # return を記述
  return "商品の購入数は0以上にして下さい:入力値 #{num}" if num <= 0
  # 商品の合計購入金額を計算
  "#{price}円の商品を#{num}個買ったので、合計金額は#{price * num}です"

  # return を記述
end

# ()の中の値がdisp_sumの引数：左からprice, numの順番となる
# puts disp_sum(1980, 20)
# puts disp_sum(2480, 20)
# puts disp_sum(72980, 20)

# 引数を無しにしてメソッドを呼び出し
puts disp_sum()
