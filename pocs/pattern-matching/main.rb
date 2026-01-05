def check_response(response)
  case response
  in {status: 200, body:}
    puts "Success: #{body}"
  in {status: 404}
    puts "Not found"
  in {status: 500, error:}
    puts "Server error: #{error}"
  in [first, *rest]
    puts "Array with first: #{first}, rest: #{rest}"
  in Integer => n if n > 100
    puts "Large number: #{n}"
  else
    puts "Unknown response"
  end
end

check_response({status: 200, body: "Hello World"})
check_response({status: 404})
check_response({status: 500, error: "DB connection failed"})
check_response([1, 2, 3, 4, 5])
check_response(150)
check_response("unknown")
