class UpvoteRelationshipsController < ApplicationController
  # GET /upvote_relationships
  # GET /upvote_relationships.json
  def index
    @upvote_relationships = UpvoteRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @upvote_relationships }
    end
  end

  # GET /upvote_relationships/1
  # GET /upvote_relationships/1.json
  def show
    @upvote_relationship = UpvoteRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upvote_relationship }
    end
  end

  # GET /upvote_relationships/new
  # GET /upvote_relationships/new.json
  def new
    @upvote_relationship = UpvoteRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upvote_relationship }
    end
  end

  # GET /upvote_relationships/1/edit
  def edit
    @upvote_relationship = UpvoteRelationship.find(params[:id])
  end

  # POST /upvote_relationships
  # POST /upvote_relationships.json
  def create
    @upvote_relationship = UpvoteRelationship.new(params[:upvote_relationship])

    respond_to do |format|
      if @upvote_relationship.save
        format.html { redirect_to @upvote_relationship, notice: 'Upvote relationship was successfully created.' }
        format.json { render json: @upvote_relationship, status: :created, location: @upvote_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @upvote_relationship.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def upvote
    @upvote_relationship = UpvoteRelationship.find(params[:id])
      @upvote_relationship.upvote_status = 1
  if @upvote_relationship.save
        format.html { redirect_to @upvote_relationship, notice: 'Upvote relationship was successfully created.' }
        format.json { render json: @upvote_relationship, status: :created, location: @upvote_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @upvote_relationship.errors, status: :unprocessable_entity }
      endend
  
  
  def downvote
  end

  # PUT /upvote_relationships/1
  # PUT /upvote_relationships/1.json
  def update
    @upvote_relationship = UpvoteRelationship.find(params[:id])

    respond_to do |format|
      if @upvote_relationship.update_attributes(params[:upvote_relationship])
        format.html { redirect_to @upvote_relationship, notice: 'Upvote relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upvote_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upvote_relationships/1
  # DELETE /upvote_relationships/1.json
  def destroy
    @upvote_relationship = UpvoteRelationship.find(params[:id])
    @upvote_relationship.destroy

    respond_to do |format|
      format.html { redirect_to upvote_relationships_url }
      format.json { head :no_content }
    end
  end
end
