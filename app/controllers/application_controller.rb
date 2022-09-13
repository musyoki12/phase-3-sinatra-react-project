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

  get "/reviews" do 
    reviews = Review.all
    reviews.to_json
  end
  get "/reviews/:id" do
    reviews = Review.find params[:id]
    reviews.to_json
  end


  post "/reviews" do 
    reviews = Review.create(
    name: params[:name],
    message: params[:message]
    )
  end
  delete "/reviews/:id" do 
    reviews = Review.find(params[:id])
    reviews.destory
  end

  
end
