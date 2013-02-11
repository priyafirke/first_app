class FirstAppinfosController < ApplicationController
  # GET /first_appinfos
  # GET /first_appinfos.json
  def index
    @first_appinfos = FirstAppinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @first_appinfos }
    end
  end

  # GET /first_appinfos/1
  # GET /first_appinfos/1.json
  def show
    @first_appinfo = FirstAppinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @first_appinfo }
    end
  end

  # GET /first_appinfos/new
  # GET /first_appinfos/new.json
  def new
    @first_appinfo = FirstAppinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @first_appinfo }
    end
  end

  # GET /first_appinfos/1/edit
  def edit
    @first_appinfo = FirstAppinfo.find(params[:id])
  end

  # POST /first_appinfos
  # POST /first_appinfos.json
  def create
    @first_appinfo = FirstAppinfo.new(params[:first_appinfo])

    respond_to do |format|
      if @first_appinfo.save
        format.html { redirect_to @first_appinfo, notice: 'First appinfo was successfully created.' }
        format.json { render json: @first_appinfo, status: :created, location: @first_appinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @first_appinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /first_appinfos/1
  # PUT /first_appinfos/1.json
  def update
    @first_appinfo = FirstAppinfo.find(params[:id])

    respond_to do |format|
      if @first_appinfo.update_attributes(params[:first_appinfo])
        format.html { redirect_to @first_appinfo, notice: 'First appinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @first_appinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_appinfos/1
  # DELETE /first_appinfos/1.json
  def destroy
    @first_appinfo = FirstAppinfo.find(params[:id])
    @first_appinfo.destroy

    respond_to do |format|
      format.html { redirect_to first_appinfos_url }
      format.json { head :no_content }
    end
  end
end
