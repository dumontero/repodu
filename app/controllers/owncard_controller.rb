class OwncardController < ApplicationController

  def index
    respond_to do |format|
      format.html # index.html.erb
      #format.xml  { render :xml => @clientes }
    end
  end

end
