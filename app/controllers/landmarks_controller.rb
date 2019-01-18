class LandmarksController < ApplicationController
  # add controller methods
  get "/landmarks/new" do
    @titles=Title.all
    @landmarks=Landmark.all
    erb :"landmarks/new"
  end

  get "/landmarks/:id/edit" do
    @landmark=Landmark.find_by_id(@params[:id])
    erb :"landmarks/edit"
  end

  get "/landmarks/:id" do
    @landmark=Landmark.find_by_id(@params[:id])

    erb :"landmarks/show"
  end

  get "/landmarks" do
    @landmarks=Landmark.all
    erb :"landmarks/index"
  end

  post "/landmarks" do
    @landmark=Landmark.create(@params[:landmark])

    redirect "/landmarks/#{@landmark.id}"

  end

  patch "/landmarks/:id" do
    @landmark=Landmark.find_by_id(@params[:id])
    @landmark.name=@params[:landmark][:name]
    @landmark.year_completed=@params[:landmark][:year_completed]
    @landmark.save
    redirect "/landmarks/#{@landmark.id}"
  end
end