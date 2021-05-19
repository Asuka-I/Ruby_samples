require "csv"

# array = CSV.read("okinawa_area.csv")
# p array

# puts "1行目に対応する配列"
# p array[0]

# puts "2行目に対応する配列"
# p array[1]

list = CSV.read("okinawa_area.csv", headers: true).map do |row|
  { id: row["id"].to_i, county: row["郡"], city: row["市区町村"], area: row["面積"].to_f }
end

# id が 6 のデータ
p list.find { |data| data[:id] == 6 }

# 南大東村 のデータ
p list.find { |data| data[:city] == "南大東村" }

# 面積 が 100 以上の全データ
p list.find_all { |data| data[:area] >= 100 }

# 中頭郡 の全データ
nakagami_list = list.select { |data| data[:county] == "中頭郡" }
p nakagami_list

# 中頭郡 の全市町村の配列
p nakagami_list.map { |data| data[:city] }

# 中頭郡 の総面積
puts nakagami_list.sum { |data| data[:area] }
