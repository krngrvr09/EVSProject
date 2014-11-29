class CommentRelationshipsController < ApplicationController
  # GET /comment_relationships
  # GET /comment_relationships.json
  def index
    @comment_relationships = CommentRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comment_relationships }
    end
  end

  # GET /comment_relationships/1
  # GET /comment_relationships/1.json
  def show
    @comment_relationship = CommentRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment_relationship }
    end
  end

  # GET /comment_relationships/new
  # GET /comment_relationships/new.json
  def new
    @comment_relationship = CommentRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment_relationship }
    end
  end

  # GET /comment_relationships/1/edit
  def edit
    @comment_relationship = CommentRelationship.find(params[:id])
  end

  # POST /comment_relationships
  # POST /comment_relationships.json
  def create
    @comment_relationship = CommentRelationship.new(params[:comment_relationship])

    respond_to do |format|
      if @comment_relationship.save
        format.html { redirect_to @comment_relationship, notice: 'Comment relationship was successfully created.' }
        format.json { render json: @comment_relationship, status: :created, location: @comment_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @comment_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comment_relationships/1
  # PUT /comment_relationships/1.json
  def update
    @comment_relationship = CommentRelationship.find(params[:id])

    respond_to do |format|
      if @comment_relationship.update_attributes(params[:comment_relationship])
        format.html { redirect_to @comment_relationship, notice: 'Comment relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_relationships/1
  # DELETE /comment_relationships/1.json
  def destroy
    @comment_relationship = CommentRelationship.find(params[:id])
    @comment_relationship.destroy

    respond_to do |format|
      format.html { redirect_to comment_relationships_url }
      format.json { head :no_content }
    end
  end
end
