class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end
  get "/requests" do 
    requests = Request.all
    requests.to_json
  end

  get "/comments" do 
    comments = Request.all
    comments.to_json
  end
  
end
