class ServicesController < ApplicationController
  # GET /services
  # GET /services.xml
  def index
    @services = Service.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services }
    end
  end

  # GET /services/1
  # GET /services/1.xml
  def show
    @services = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @services }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @services = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @services }
    end
  end

  # GET /services/1/edit
  def edit
    @services = Service.find(params[:id])
  end

  # POST /services
  # POST /services.xml
  
  def create
    @services = Service.new(params[:services])

    respond_to do |format|
      if @services.save
        flash[:notice] = 'Services was successfully created.'
        format.html { redirect_to(@services) }
        format.xml  { render :xml => @services, :status => :created, :location => @services }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @services.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.xml
  def update
    @services = Service.find(params[:id])

    respond_to do |format|
      if @services.update_attributes(params[:services])
        flash[:notice] = 'Services was successfully updated.'
        format.html { redirect_to(@services) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @services.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.xml
  def destroy
    @services = Service.find(params[:id])
    @services.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end
end
