require 'singleton'

class Configuration
  include Singleton
  attr_accessor :host, :port, :debug

  def initialize
    @host = "localhost"
    @port = 8080
    @debug = false
  end

  def to_s
    "Config[host=#{@host}, port=#{@port}, debug=#{@debug}]"
  end
end

config1 = Configuration.instance
config1.host = "0.0.0.0"
config1.port = 3000
config1.debug = true

config2 = Configuration.instance
puts "config1: #{config1}"
puts "config2: #{config2}"
puts "Same instance? #{config1.equal?(config2)}"
puts "Object ID: #{config1.object_id} == #{config2.object_id}"

config2.port = 9000
puts "After change via config2: #{config1}"
