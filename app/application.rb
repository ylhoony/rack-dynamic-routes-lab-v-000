class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

    else

      res.status = 400
    end
    res.finish
  end

end
