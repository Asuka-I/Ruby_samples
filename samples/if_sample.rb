a = 10
b = 15

print "aはb以上？:"
puts a >= b
print "aはb以下？:"
puts a <= b
print "aはbより大きい？:"
puts a > b
print "aはbより小さい？:"
puts a < b
print "aはbと同じ？:"
puts a == b

# 条件がtrueの場合は実行される
if true
  puts "実行されます"
end
# 条件がfalseの場合は実行されない
if false
  puts "実行されません"
end


###### else ######
hp = 5

if hp >= 10
  puts "勇者のHPは10以上だ"
else
# ifの条件が成り立たない場合の処理
  puts "勇者のHPは10より下だ"
end

hp = 3

if hp > 10
  puts "勇者は元気だ"
# 複数の条件を指定するときに使う
elsif hp > 5
  puts "勇者は弱っている"
elsif hp > 3
  puts "勇者はかなり弱っている"
elsif hp > 0
  puts "勇者は瀕死だ"
else 
  puts "勇者は死んだ"
end

###### case ######
month = 6

# 比較対象をcaseの後に記述
case month
# 比較対象と比較する値を記述
when 3, 4, 5
  puts "春です"
when 6, 7, 8
  puts "夏です"
when 9, 10, 11
  puts "秋です"
when 12, 1, 2
  puts "冬です"
else
  puts "不正な値です"
end

###### 範囲オブジェクト ######
month = 6

# 比較対象をcaseの後に記述
case month
# 比較対象と比較する値を記述
when 3..5
  puts "春です"
when 6..8
  puts "夏です"
when 9..11
  puts "秋です"
when 12..2
  puts "冬です"
else
  puts "不正な値です"
end

###### ifの省略形 ######
hp = 30
puts "勇者のHPは10以上だ" if hp >= 10

###### 三項演算子 ######
hp = 11

# 条件式(true or false) ? trueの時に行いたい処理 : falseの時に行いたい処理
puts hp > 10 ? "勇者のHPは10より大きいです" : "勇者のHPは10以下です"