class AmendmentsController < ApplicationController
  # GET /amendments
  # GET /amendments.json
  def index
    @amendments = Amendment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @amendments }
    end
  end

  # GET /amendments/1
  # GET /amendments/1.json
  def show
    @amendment = Amendment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @amendment }
    end
  end

  # GET /amendments/new
  # GET /amendments/new.json
  def new
    @amendment = Amendment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @amendment }
    end
  end

  # GET /amendments/1/edit
  def edit
    @amendment = Amendment.find(params[:id])
  end

  # POST /amendments
  # POST /amendments.json
  def create
    @amendment = Amendment.new(params[:amendment])

    respond_to do |format|
      if @amendment.save
        format.html { redirect_to @amendment, notice: 'Amendment was successfully created.' }
        format.json { render json: @amendment, status: :created, location: @amendment }
      else
        format.html { render action: "new" }
        format.json { render json: @amendment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /amendments/1
  # PUT /amendments/1.json
  def update
    @amendment = Amendment.find(params[:id])

    respond_to do |format|
      if @amendment.update_attributes(params[:amendment])
        format.html { redirect_to @amendment, notice: 'Amendment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @amendment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amendments/1
  # DELETE /amendments/1.json
  def destroy
    @amendment = Amendment.find(params[:id])
    @amendment.destroy

    respond_to do |format|
      format.html { redirect_to amendments_url }
      format.json { head :no_content }
    end
  end
end
