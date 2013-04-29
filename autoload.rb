$:.unshift(File.expand_path File.dirname(__FILE__))

autoload :"Autoloaded", "support/autoloaded"

100.times.map do
  Thread.new { Autoloaded::LOADED }
end.each(&:join)
