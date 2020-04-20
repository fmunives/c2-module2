def my_languages(results)
  values = []
  results.map { |key, value| values << key if value >= 60  }
  values.sort! { |first_value, second_value| second_value <=> first_value  }
end

p my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71} )