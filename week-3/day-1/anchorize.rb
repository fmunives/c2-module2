
def anchorize_me(text)
  begin
    valid_url = text.match(/(\w+) (?<url>(http|https|ftp|ftps|file|smb):\/\/(\w+\.\w+))/i)
    puts "hello <a href='#{valid_url[:url]}'>#{valid_url[:url]} !"
  rescue Exception => e
    puts "You need to match with a correct global url such as http|https|ftp|ftps|file|smb, error: #{e}"
  end
end

anchorize_me('hello smb://world.com !')
