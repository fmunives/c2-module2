
def array_of_fixnums?(array)
  array.all? { |x| yield(x) }
end
puts array_of_fixnums? ([1,2,3]) { |x| x.is_a? Fixnum } 