class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 def hello
    render html: "おはよう"
  end
  
  def goodbye
    render html: "さよなら人類"
  end
end
