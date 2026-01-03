require 'net/http'

uri = URI('https://jsonplaceholder.typicode.com/')
uri.freeze
hostname = uri.hostname
path = uri.path
port = uri.port

http = Net::HTTP.new(hostname, port)
http.use_ssl = (uri.scheme == 'https')
request = Net::HTTP::Get.new(path)
response = http.request(request)
puts response.body