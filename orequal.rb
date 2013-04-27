class A
  def number
    @number ||= rand(100)
  end
end

100.times do
  a = A.new
  values = 20.times.map{ Thread.new{ a.number } }.map(&:value)
  if values.uniq.size > 1
    puts "Got multiple values for number:"
    p values
    exit 1
  end
end
