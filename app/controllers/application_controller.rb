class ApplicationController < ActionController::Base
  def hello
    render html: 'Hello AMT'
  end
  
end
