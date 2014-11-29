require "spec_helper"

describe CommentRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/comment_relationships").should route_to("comment_relationships#index")
    end

    it "routes to #new" do
      get("/comment_relationships/new").should route_to("comment_relationships#new")
    end

    it "routes to #show" do
      get("/comment_relationships/1").should route_to("comment_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comment_relationships/1/edit").should route_to("comment_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comment_relationships").should route_to("comment_relationships#create")
    end

    it "routes to #update" do
      put("/comment_relationships/1").should route_to("comment_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comment_relationships/1").should route_to("comment_relationships#destroy", :id => "1")
    end

  end
end
