class ApplicationController < ActionController::Base
  
  def test
    render html: "It works!"
  end
  
end
