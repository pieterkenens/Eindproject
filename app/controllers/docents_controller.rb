class DocentsController < ApplicationController
  # GET /docents
  # GET /docents.xml
  def index
    @docents = Docent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @docents }
    end
  end

  # GET /docents/1
  # GET /docents/1.xml
  def show
    @docent = Docent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @docent }
    end
  end

  # GET /docents/new
  # GET /docents/new.xml
  def new
    @docent = Docent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @docent }
    end
  end

  # GET /docents/1/edit
  def edit
    @docent = Docent.find(params[:id])
  end

  # POST /docents
  # POST /docents.xml
  def create
    @docent = Docent.new(params[:docent])

    respond_to do |format|
      if @docent.save
        format.html { redirect_to(@docent, :notice => 'Docent was successfully created.') }
        format.xml  { render :xml => @docent, :status => :created, :location => @docent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @docent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /docents/1
  # PUT /docents/1.xml
  def update
    @docent = Docent.find(params[:id])

    respond_to do |format|
      if @docent.update_attributes(params[:docent])
        format.html { redirect_to(@docent, :notice => 'Docent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @docent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /docents/1
  # DELETE /docents/1.xml
  def destroy
    @docent = Docent.find(params[:id])
    @docent.destroy

    respond_to do |format|
      format.html { redirect_to(docents_url) }
      format.xml  { head :ok }
    end
  end
end
