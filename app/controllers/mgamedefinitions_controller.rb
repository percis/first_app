class MgamedefinitionsController < ApplicationController
  # GET /mgamedefinitions
  # GET /mgamedefinitions.json
  def index
    @mgamedefinitions = Mgamedefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mgamedefinitions }
    end
  end

  # GET /mgamedefinitions/1
  # GET /mgamedefinitions/1.json
  def show
    @mgamedefinition = Mgamedefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mgamedefinition }
    end
  end

  # GET /mgamedefinitions/new
  # GET /mgamedefinitions/new.json
  def new
    @mgamedefinition = Mgamedefinition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mgamedefinition }
    end
  end

  # GET /mgamedefinitions/1/edit
  def edit
    @mgamedefinition = Mgamedefinition.find(params[:id])
  end

  # POST /mgamedefinitions
  # POST /mgamedefinitions.json
  def create
    @mgamedefinition = Mgamedefinition.new(params[:mgamedefinition])

    respond_to do |format|
      if @mgamedefinition.save
        format.html { redirect_to @mgamedefinition, notice: 'Mgamedefinition was successfully created.' }
        format.json { render json: @mgamedefinition, status: :created, location: @mgamedefinition }
      else
        format.html { render action: "new" }
        format.json { render json: @mgamedefinition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mgamedefinitions/1
  # PUT /mgamedefinitions/1.json
  def update
    @mgamedefinition = Mgamedefinition.find(params[:id])

    respond_to do |format|
      if @mgamedefinition.update_attributes(params[:mgamedefinition])
        format.html { redirect_to @mgamedefinition, notice: 'Mgamedefinition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mgamedefinition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mgamedefinitions/1
  # DELETE /mgamedefinitions/1.json
  def destroy
    @mgamedefinition = Mgamedefinition.find(params[:id])
    @mgamedefinition.destroy

    respond_to do |format|
      format.html { redirect_to mgamedefinitions_url }
      format.json { head :no_content }
    end
  end
end
