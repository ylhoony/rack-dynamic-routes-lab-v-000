require 'pry'

class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      # binding.pry
      item_name = req.path.split("/").last
      e = @@items.select {|item| item.name == item_name}
      if !e.empty?
        # binding.pry
        res.write "#{e[0].price}"
        
      else
        res.write "Item not found"
        res.status = 400
      end
    else
      res.write "Route not found"
      res.status = 404
    end
    res.finish
  end

end
