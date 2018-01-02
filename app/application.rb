class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

    else
      res.write "Route not found"
      res.status = 404
    end
    res.finish
  end

end
