# クラスを定義する
class Product
  # (1)@name、@priceをクラスの外から参照可能にする
  attr_reader :id, :name, :price
  @@count = 30
  def initialize(product_params)
    @id = @@count += 1
    @name = product_params[:name]
    @price = product_params[:price]
  end
end

class Greengrocer
  attr_reader :products
  def initialize(product_params)
    @products = []
    register_product(product_params)
  end

  # 商品を登録するメソッドを定義
  def register_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  def disp_products
    puts "いらっしゃいませ！商品を選んで下さい。"
    @products.each do |product|
      puts "#{product.id}.#{product.name}" "(¥#{product.price})"
    end
  end

  # 「個数を質問する」メソッドを定義、引数とコードを調整
  def ask_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end

  #「合計金額を計算する」メソッドを追加（仮引数を設定）
  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    if user.quantity_of_product >= 5
      total_price *= 0.9
      puts "5個以上なので10％割引となります！"
    end
    puts "合計金額は#{total_price.floor}です。"
    puts "お買い上げありがとうございました！"
  end
end

class User
  # 「選んだ商品」をクラス外から参照可能にする
  attr_reader :chosen_product, :quantity_of_product
  # 「商品を選択する」メソッド
  def choose_product(products)
    while true
      print "商品の番号を選択 >"
      select_product_id = gets.to_i
      @chosen_product = products.find { |product| product.id == select_product_id }
      break if !@chosen_product.nil?
      puts "#{products.first.id}から#{products.last.id}の番号から選んでください。"
    end
  end

  # 個数を決定する
  def decide_quantity
    while true
      print "個数を入力 >"
      @quantity_of_product = gets.to_i
      break if @quantity_of_product >= 1
      puts "１個以上選んでください。"
    end
  end
end

# インスタンスを生成する
# 八百屋1の商品データ
product_params1 = [
  { name: "トマト", price: 100 },
  { name: "きゅうり", price: 200 },
  { name: "玉ねぎ", price: 300 },
  { name: "なす", price: 400 },
]

# adding_product_params1の商品を持つ八百屋の開店
greengrocer1 = Greengrocer.new(product_params1)

# 追加商品データ
adding_product_params1 = [
  { name: "ごぼう", price: 250 },
  { name: "れんこん", price: 350 },
]

# 商品を登録（adding_product_params1 の商品を追加）
greengrocer1.register_product(adding_product_params1)

# お客さんの来店（Userクラスのインスタンスを生成）
user = User.new

# 商品を表示
greengrocer1.disp_products

# 商品を選択するメソッドを呼び出し（実引数を設定）
user.choose_product(greengrocer1.products)

# 引数を設定し、「個数を質問する」メソッドを呼び出す
greengrocer1.ask_quantity(user.chosen_product)

# 個数を決定
user.decide_quantity

# 引数とコードを調整し、「合計金額を計算する」メソッドを呼び出す
greengrocer1.calculate_charges(user)
