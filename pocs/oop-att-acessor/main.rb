class Blurb
  attr_accessor :content, :time, :mood

  def summary
    puts "Blurb Content: #{content}"
    puts "Time Posted: #{time}"
    puts "Mood: #{mood}"
  end  
end

blurb = Blurb.new
blurb.content = "Just finished a great book!"
blurb.time = Time.now
blurb.mood = "happy"
blurb.summary