# 名前、メール、住所のデータが入ったハッシュの定義
# キー：name, email, address
# 値：Tanaka, hoge@co.ne.jp, Saitama
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama"}
# ハッシュからデータを取り出す
puts params[:name]

# キーがシンボルではなく文字列になっている
# 途中で改行できる
params = { 
            "name" => "Tanaka", 
            "email" => "hoge@co.ne.jp", 
            "address" => "Saitama", # カンマがあってもエラーは出ない
          }
puts params ["name"]

# ハッシュ
{ "name" => "Tanaka", "email" => "hoge@co.ne.jp", "address" => "Saitama" }

# each {} を使用して以下のようにも書ける
names = ["satou", "tanaka", "yamada", "shimizu"].each {|name| puts "Hello! #{name}."}

###### ハッシュの要素を編集 ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# データの書き換え
params [:name] = "Saitou"
# データの追加
params [:age] = 33

puts params[:name]
puts params[:age]

# 存在しないキーを指定するとnilになる
p params[:hobby]

###### ハッシュを使った繰り返し処理 ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

params.each do |key, value|
  puts "キー:#{key}"
  puts "値:#{value}"
end

params.each do |key_value|
  # 配列を出力
  p key_value
end

params.each do |key_value|
  # 配列を出力
  puts key_value[0]
  puts key_value[1]
end

###### ハッシュの比較 ######
params1 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }
params2 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# trueが返る
puts params1 == params2

params3 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Tokyo" }
params4 = { name: "Tanaka", email: "fuga@co.ne.jp", address: "Saitama" }

# falseが返る
puts params3 == params4

###### ハッシュのサイズを調べる ######
hash1 = {}
hash2 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Tokyo"}

# sizeメソッド
puts hash1.size
puts hash2.size

###### 要素の削除 ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# nameを削除
params.delete(:name)
p params

params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# ageを削除
p params.delete(:age)

params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# ageを削除 ブロックを渡す
puts params.delete(:age) {|key| "#{key}というキーは存在しないため削除できませんでした"}

###### シンボル ######
# シンボルのみ
# params = { name: :Tanaka, email: :hoge@co.ne.jp, address: :Saitama }
# # => を使用した記述
# params = { :neme => :Tanaka, :email => :hoge@co.ne.jp, :address => :Saitama} 

###### ハッシュのキーのみを取り出す ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

params.each_key do |key|
  puts "キー:#{key}"
end

###### ハッシュの値のみを取り出す ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

params.each_value do |value|
  puts "値:#{value}"
end

###### キーと値の入れ替え ######
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

puts params.invert