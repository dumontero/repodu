class ClientesController < ApplicationController


  def index2
    render :html => 'index2' 
  end


  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clientes }
    end
  end



  def show
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cliente }
    end
  end


  def new
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cliente }
    end
  end


  def edit
    @cliente = Cliente.find(params[:id])
  end


  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to(@cliente, :notice => 'Cliente was successfully created.') }
        format.xml  { render :xml => @cliente, :status => :created, :location => @cliente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end


  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to(clientes_url, :notice => 'Cliente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to(clientes_url) }
      format.xml  { head :ok }
    end
  end
  
  def inativar_mod
    @cliente = Cliente.find(params[:id])
    if @cliente.inativar
      redirect_to(buscar_clientes_url(:rg => params[:rg])) 
      flash[:notice] = 'Inativado ****************'
    else
      redirect_to(buscar_clientes_url(:rg => params[:rg]))
      flash[:notice] = 'Não foi possível inativar ****************'
    end
  end
  
  def ativar_mod
    @cliente = Cliente.find(params[:id])
    if @cliente.ativar
      redirect_to(buscar_clientes_url(:rg => params[:rg]))
      flash[:notice] = 'Ativado ****************'
    else
     redirect_to(buscar_clientes_url(:rg => params[:rg]))
      flash[:notice] = 'Não foi possível ativar ****************'
    end
  end
  
  def buscar
    @cliente = Cliente.find_by_rg(params[:rg])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cliente }
    end
  end

end
