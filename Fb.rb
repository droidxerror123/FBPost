# nih fbpost buatan ndiri
# tambahin aja sesukamu
require "uri"
require "net/http"
@token = "ENTER_YOUR_TOKEN_HERE"
def fbpost(token, arg)
request = Net::HTTP.get_response(URI("https://graph.facebook.com/me/feed?method=POST&message=#{arg.join(' ')}&access_token=#{token}"))
puts "fbpost: post: done"endif __FILE__ == $0beginif ARGV.length < 2puts "Usage: fbpost [TEXT]"else fbpost(@token, ARGV)end rescue Socket Error puts "fbpost: error: check your internet connection"end end
