require 'resque/server'
if resque_password = Settings.resque_password
  Resque::Server.use(Rack::Auth::Basic) do |user, password| 
    password == resque_password
  end
end