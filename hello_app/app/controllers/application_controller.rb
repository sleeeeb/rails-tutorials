class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 def hello
    render html: "オールナイトニッポン"
  end
  
  def goodbye
    render html: "こんにちは"
  end
end
