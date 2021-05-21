ages = [22, 34, 12, 45]
# 0番目の要素：22を取り出す
puts ages[0]
# 1番目の要素：34を取り出す
puts ages[1]
# 2番目の要素：12を取り出す
puts ages[2]
# 3番目の要素：45を取り出す
puts ages[3]
# 要素を追加
ages << 66 
p ages

###### .each.do ######
# 配列 複数のデータを格納できる
users = ["Saitou", "Tanaka", "Suzuki", "Yamada", "Shimizu"]
# 要素を追記
users << "Ishii"
p users

# 配列に対してeach文で中身を表示
# usersの要素１つ１つをnameに代入してブロック内の処理を実行
users.each do |user|
  puts "Hello! #{user}"
end

ages = [22, 34, 12, 45]

ages.each do |age|
  puts "I'm #{age} years old."
end


items = ["book", "food", "movie", "music"]

items.each do |item|
  puts "I bought #{item}."
end

prefectures = ["Hokkaido", "Okinawa", "Saitama", "Ibaraki"]

prefectures.each do |prefecture|
  puts "#{prefecture} is awsome!!"
end

###### .each.with_index ######
users = ["satou", "tanaka", "yamada", "shimizu"]

# インデックス番号と配列の要素を同時に出力
# インデックスの開始番号を指定
users.each.with_index(1) do |name, i|
  # iを利用してカウント
  puts "No.#{i} #{name}"
end

ages = [20, 60, 27, 23]

ages.each.with_index(1) do |age, i|
  puts "No.#{i} I'm #{age} years old."
end

items = ["book", "food", "movie", "music"]

items.each.with_index(1) do |item, i|
  puts "No.#{i} I bought #{item}."
end

prefectures = ["Hokkaido", "Okinawa", "Saitama", "Ibaraki"]

prefectures.each.with_index(1) do |prefecture, i|
  puts "No.#{i} #{prefecture} is awesome!!!"
end

###### サンプルプログラム ######
user_list = ["Yanagi", "Saitou", "Aoyagi", "Imai", "Obata", "Takahashi"]

# チームA,Bのメンバーを格納するための配列
team_a = []
team_b = []

user_list.each.with_index(1) do |user, i|
  if i.odd?
    # 配列に要素を格納する
    team_a << user
  else
    team_b << user
  end
end

# チームAのメンバーを表示
puts "チームA"
puts team_a
puts ""

# チームBのメンバーを表示
puts "チームB"
puts team_b

###### 文字列連結 ######
user_list = ["Yanagi", "Saitou", "Aoyagi", "Imai", "Obata", "Takahashi"]

team_a = []
team_b = []

user_list.each.with_index do |user, i|
  if i.odd?
    team_a << user
  else
    team_b << user
  end
end

# チームAのメンバーを表示
# \nを入れて改行
text = "チームA\n"
team_a.each.with_index(1) do |member, i|
  # テキストに文字列連結
  # チームメンバーを「〜さん」と表示する
  text += "No.#{i}: #{member}さん\n"
end
  # チームBのメンバーを表示
  # \nを入れて改行
  # チームメンバーを「〜さん」と表示する
text += "\nチームB\n"
team_a.each.with_index(1) do |member, i|
  # テキストに文字列連結
  text += "No.#{i}: #{member}さん\n"
end
# チーム分けの情報を表示
puts text

###### 配列の各要素をランダムに並び替える ######
user_list = ["Yanagisawa", "Satou", "Aoki", "Imagawa", "Obanai", "Takatsuka"]

# user_listの要素をランダムに入れ替える
user_list.shuffle!

team_a = []
team_b = []

user_list.each.with_index do |user, i|
  if i.odd?
    team_a << user
  else
    team_b << user
  end
end

# チームAのメンバーを表示
# \nを入れて改行
text = "チームA\n"
team_a.each.with_index(1) do |member, i|
  # テキストに文字列連結
  # チームメンバーを「〜さん」と表示する
  text += "No.#{i}: #{member}さん\n"
end
# チームBのメンバーを表示
# \nを入れて改行
# チームメンバーを「〜さん」と表示する
text += "\nチームB\n"
team_a.each.with_index(1) do |member, i|
  # テキストに文字列連結
  text += "No.#{i}: #{member}さん\n"
end
# チーム分けの情報を表示
puts text
