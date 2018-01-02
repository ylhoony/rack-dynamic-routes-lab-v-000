require 'pry'

class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      # binding.pry
      item_name = req.path.split("/").last
      if e = @@items.select {|item| item.name == item_name}
        e.price
      else

      end
    else
      res.write "Route not found"
      res.status = 404
    end
    res.finish
  end

end
