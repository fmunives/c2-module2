def who_is_online(friends)
  new_list = Hash.new(0)
  friends.each do |friend|
    if friend["status"] == "online" and friend["last_activity"] > 10
      friend["status"] = "away"
    end
    new_list[friend["status"]] = friend["username"]
  end
  puts new_list
end

who_is_online([{"username"=> "David", "status"=> "online", "last_activity"=> 10},
  {"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
  {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}])