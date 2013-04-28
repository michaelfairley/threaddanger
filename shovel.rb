1000.times do
  a = []
  n = 100
  n.times.map{|i| Thread.new{ a << i } }.each(&:join)
  if a.sort != n.times.to_a
    puts "Something's missing: "
    p n.times.to_a - a
    exit 1
  end
end
