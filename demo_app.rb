module DemoApp
  class Application < Sinatra::Base
    get '/' do
<<END
<form action="/" method="post">
  <label for="message">Message</label>
  <input type="text" name="message" id="message">
  <button>Message!</button>
</form>
END
    end

    post '/' do
      "Sua mensagem foi \"#{params[:message]}\""
    end
  end
end
