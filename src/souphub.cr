require "raze"
require "./middleware/soupauth"

get "/" do
  "welcome to souphub"
end

get "/catchall*", SoupAuth.new do |ctx|
  "catching everything"
end

get "/soup/:soup_id/" do |ctx|
  soup_id = ctx.params["soup_id"]

  ctx.response.content_type = "application/json"

  {soup: soup_id}.to_json
end

Raze.run