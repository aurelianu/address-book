class AddressesController < ApplicationController

  @letters = "ABCDEFGHIJKLMNOPQRSTUBWXYZ".split(" ")
  @title = "Community"

  # GET /addresses/search_by_letter
  def search_by_letter

  end

  # GET /addresses/search
  def search
    q = params[:q]
    if q.blank?
      @addresses = []
    else
      @addresses = Address.search( q )
    end
  end
  
  def print

  end
  
  # GET /addresses
  def index
    @addresses = Address.all

  end

  # GET /addresses/1
  def show
    @address = Address.find(params[:id])
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /addresses
  def create
    @address = Address.new(params[:address])

      if @address.save
        redirect_to(@address, :notice => 'Address was successfully created.')
      else
        render :action => "new"
      end
  end

  # PUT /addresses/1
  def update
    @address = Address.find(params[:id])

      if @address.update_attributes(params[:address])
        redirect_to(@address, :notice => 'Address was successfully updated.')
      else
        render :action => "edit"
      end
  end

  # DELETE /addresses/1
  def destroy
    @address = Address.find(params[:id])
    @address.destroy
  end
end
