class AanwezigsController < ApplicationController
  # GET /aanwezigs
  # GET /aanwezigs.xml
  def index
    @aanwezigs = Aanwezig.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aanwezigs }
    end
  end

  # GET /aanwezigs/1
  # GET /aanwezigs/1.xml
  def show
    @aanwezig = Aanwezig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aanwezig }
    end
  end

  # GET /aanwezigs/new
  # GET /aanwezigs/new.xml
  def new
    @aanwezig = Aanwezig.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aanwezig }
    end
  end

  # GET /aanwezigs/1/edit
  def edit
    @aanwezig = Aanwezig.find(params[:id])
  end

  # POST /aanwezigs
  # POST /aanwezigs.xml
  def create
    @aanwezig = Aanwezig.new(params[:aanwezig])

    respond_to do |format|
      if @aanwezig.save
        format.html { redirect_to(@aanwezig, :notice => 'Aanwezig was successfully created.') }
        format.xml  { render :xml => @aanwezig, :status => :created, :location => @aanwezig }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aanwezig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aanwezigs/1
  # PUT /aanwezigs/1.xml
  def update
    @aanwezig = Aanwezig.find(params[:id])

    respond_to do |format|
      if @aanwezig.update_attributes(params[:aanwezig])
        format.html { redirect_to(@aanwezig, :notice => 'Aanwezig was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aanwezig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aanwezigs/1
  # DELETE /aanwezigs/1.xml
  def destroy
    @aanwezig = Aanwezig.find(params[:id])
    @aanwezig.destroy

    respond_to do |format|
      format.html { redirect_to(aanwezigs_url) }
      format.xml  { head :ok }
    end
  end
end
