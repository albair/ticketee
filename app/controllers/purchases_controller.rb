def new
  @purchase = Purchase.new
  respond_to do |format|
    format.html # new.html.erb
    format.xml { render :xml => @purchase }
  end
end

def create
  @purchase = Purchase.new(params[:purchase])
  respond_to do |format|
    if @purchase.save
      format.html { redirect_to(@purchase, :notice => 'Purchase was successfully created.') }
      format.xml { render :xml => @purchase, :status => :created, :location=> @purchase }
    else
      format.html { render :action => "new" }
      format.xml { render :xml => @purchase.errors, :status => :unprocessable_entity }
    end
  end
end
