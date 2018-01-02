require 'pry'

class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      binding.pry
      item_name = req.path.split("/").last
      @@items.collect {|item| item.name == item_name}
    else
      res.write "Route not found"
      res.status = 404
    end
    res.finish
  end

end
