# name が変数
# "satou" が変数に格納する値
name = "satou"
item = "book"
price = 10000

# 式展開
name = "Tanaka"
# 式展開を書くと表示される
puts "Hello! #{name}"
# そのまま変数名を書くと変数の値は表示されない
puts "Hello! name"

# ヒアドキュメントの中で式展開
puts <<~TEXT
Hello!! #{name}

You are very cool!!
Let's enjoy programming together!!
TEXT

# 名前情報を入れる変数
name = "Satou"
# 年齢情報を入れる変数
age = 33
# 住所情報を入れる変数
address = "Tokyo"
# 電話番号を入れる変数
tell = "080-2343-9183"

# 変数に格納したデータを式展開で表示
puts "【自己紹介】"
puts "私の名前は#{name}です。"
puts "年齢は#{age}です。"
puts "今住んでいるところは#{address}です。"
puts "電話番号は#{tell}です。"
puts "宜しくお願いいたします！"

# ヒアドキュメントを使って式展開
puts <<~TEXT
【自己紹介】
私の名前は#{name}です。
年齢は#{age}です。
今住んでいるところは#{address}です。
電話番号は#{tell}です。
宜しくお願いいたします。
TEXT
