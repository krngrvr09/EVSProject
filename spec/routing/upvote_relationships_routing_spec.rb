require "spec_helper"

describe UpvoteRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/upvote_relationships").should route_to("upvote_relationships#index")
    end

    it "routes to #new" do
      get("/upvote_relationships/new").should route_to("upvote_relationships#new")
    end

    it "routes to #show" do
      get("/upvote_relationships/1").should route_to("upvote_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/upvote_relationships/1/edit").should route_to("upvote_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/upvote_relationships").should route_to("upvote_relationships#create")
    end

    it "routes to #update" do
      put("/upvote_relationships/1").should route_to("upvote_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/upvote_relationships/1").should route_to("upvote_relationships#destroy", :id => "1")
    end

  end
end
