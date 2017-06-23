module DemoApp
  class Application < Sinatra::Base
    template :index do
"<form action=\"/\" method=\"post\">
  <label for=\"message\">Message</label>
  <input type=\"text\" name=\"message\" id=\"message\">
  <button>Message!</button>
</form>"
    end

    get '/' do
      erb :index
    end

    post '/' do
      %Q[Sua mensagem foi "#{params[:message]}"]
    end
  end
end
