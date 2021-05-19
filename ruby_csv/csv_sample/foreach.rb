require "csv"
require "pry"

# CSV.foreach("okinawa_area.csv", headers: true) do |row|
#   binding.pry
# end

list = []
CSV.foreach("okinawa_area.csv",headers: true) do |row|
  list << { id: row["id"].to_i, country: row["群"], city: row["市区町村"], area: row["面積"].to_f }
end

p list