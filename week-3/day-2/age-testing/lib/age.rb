require 'date'

class Age
  def get_age(year, month,day)
    currently_date = Date.today
    my_birthday = Date.parse("#{year.to_s}/#{month.to_s}/#{day.to_s}")
  
    if my_birthday.month >= currently_date.month && my_birthday.day > currently_date.day
      my_age = currently_date.year - my_birthday.year - 1
    else
      my_age = currently_date.year - my_birthday.year
    end
    my_age
  end
end

# my_currently_age = Age.new
# puts my_currently_age.age?(1991, 4, 24)


# print age?(1991, 4, 24)