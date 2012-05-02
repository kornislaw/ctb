class WebImagesController < ApplicationController
  # GET /web_images
  # GET /web_images.json
  def index
    @web_images = WebImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @web_images }
    end
  end

  # GET /web_images/1
  # GET /web_images/1.json
  def show
    @web_image = WebImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @web_image }
    end
  end

  # GET /web_images/new
  # GET /web_images/new.json
  def new
    @web_image = WebImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @web_image }
    end
  end

  # GET /web_images/1/edit
  def edit
    @web_image = WebImage.find(params[:id])
  end

  # POST /web_images
  # POST /web_images.json
  def create
    @web_image = WebImage.new(params[:web_image])

    respond_to do |format|
      if @web_image.save
        format.html { redirect_to @web_image, notice: 'Web image was successfully created.' }
        format.json { render json: @web_image, status: :created, location: @web_image }
      else
        format.html { render action: "new" }
        format.json { render json: @web_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /web_images/1
  # PUT /web_images/1.json
  def update
    @web_image = WebImage.find(params[:id])

    respond_to do |format|
      if @web_image.update_attributes(params[:web_image])
        format.html { redirect_to @web_image, notice: 'Web image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @web_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_images/1
  # DELETE /web_images/1.json
  def destroy
    @web_image = WebImage.find(params[:id])
    @web_image.destroy

    respond_to do |format|
      format.html { redirect_to web_images_url }
      format.json { head :no_content }
    end
  end
end
