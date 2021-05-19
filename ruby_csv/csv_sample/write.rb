require "csv"
require "faker"
Faker::Config.locale = :ja

CSV.open("users.csv", "wb") do |csv|
  csv << %w[id name email]
  1.upto(100) do |i|
    csv << [i, Faker::Name.name, Faker::Internet.email]
  end
end
