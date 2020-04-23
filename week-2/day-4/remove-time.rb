def shorten_to_date(long_date)
  short_date = long_date.split(" ").slice(0,2)
  obtain_day_with_coma = long_date.split(" ").slice(2,1)
  obtain_day_without_coma =  obtain_day_with_coma[0].split("").slice(0,1).join()
  short_date.push(obtain_day_without_coma).join(" ")
end

print shorten_to_date("Monday February 2, 8pm")