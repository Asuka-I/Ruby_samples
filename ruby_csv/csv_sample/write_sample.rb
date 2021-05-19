require "csv"

CSV.open("sample.csv", "wb") do |csv|
  csv << ["id", "name", "email"]
  csv << ["1", "佐藤", "satou@example.com"]
  csv << ["2", "鈴木", "suzuki@example.com"]
  csv << ["3", "高橋", "takahashi@example.com"]
end