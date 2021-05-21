# クラスを定義
class Car
  # initializeメソッドで初期値を設定
  def initialize(color)
    @color = color
  end
  # colorの値を表示するメソッド（値を取り出すのでゲッターと呼ばれている）
  def color
    @color
  end
  # @name に値を代入（変数に値を設定するのでセッターと呼ばれている）
  def color=(color)
    # インスタンス変数
    @color = color
  end
end

# インスタンス化された瞬間にinitializeメソッドが呼び出され
# インスタンス化する際にinitializeメソッドに値を渡す
# クラスをインスタンス化
car1 = Car.new("red")
car2 = Car.new("green")
car3 = Car.new("blue")

# colorにredを代入する記述がいらなくなる
# Carクラスのcolorにredを代入（セッターを利用）
# car.color = "red"

# Carクラスのcolorに格納されたredの値を取得(ゲッターを利用)
puts car1.color
puts car2.color
puts car3.color

###### アクセサ（セッター、ゲッター) ######
class Car
  # ゲッター
  attr_reader :color
  # セッター
  attr_writer :color

  def initialize(color)
    @color = color
  end
end

###### attr_accessor ######
class Car
  attr_accessor :color, :price, :capacpty
  def initialize(color, price, capacpty)
    @color = color
    @price = price
    @capacpty = capacpty
  end
end

car1 = Car.new("red", 1000021, 4)
car2 = Car.new("green", 1002000, 20)
car3 = Car.new("blue", 3000000, 6)

puts car1.color
puts car1.price
puts car1.capacpty

puts car2.color
puts car2.price
puts car2.capacpty

puts car3.color
puts car3.price
puts car3.capacpty