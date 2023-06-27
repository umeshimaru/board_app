require("date")

month = gets.to_i

# 1ヶ月何日あるか調べる
first_day_of_month = Date.new(2023,month)
how_many_days_in_a_month= Date.new(first_day_of_month.year,first_day_of_month.month,-1).day 


puts how_many_days_in_a_month
how_many_days_in_a_month.times do 

# 日付と曜日を取得
# 配列に２次元ハッシュとして日付と曜日を入れる[{1,{日にち,曜日}}]

end