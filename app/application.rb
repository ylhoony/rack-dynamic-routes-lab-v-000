class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)
  end
  
end