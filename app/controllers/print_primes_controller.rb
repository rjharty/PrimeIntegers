class PrintPrimesController < ApplicationController
  # GET /print_primes
  # GET /print_primes.json
  def index
    @print_primes = PrintPrime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @print_primes }
    end
  end

  # GET /print_primes/1
  # GET /print_primes/1.json
  def show
    @print_prime = PrintPrime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @print_prime }
    end
  end

  # GET /print_primes/new
  # GET /print_primes/new.json
  def new
    @print_prime = PrintPrime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @print_prime }
    end
  end

  # GET /print_primes/1/edit
  def edit
    @print_prime = PrintPrime.find(params[:id])
  end

  # POST /print_primes
  # POST /print_primes.json
  def create
    @print_prime = PrintPrime.new(params[:print_prime])

    respond_to do |format|
      if @print_prime.save
        format.html { redirect_to @print_prime, notice: 'Print prime was successfully created.' }
        format.json { render json: @print_prime, status: :created, location: @print_prime }
      else
        format.html { render action: "new" }
        format.json { render json: @print_prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /print_primes/1
  # PUT /print_primes/1.json
  def update
    @print_prime = PrintPrime.find(params[:id])

    respond_to do |format|
      if @print_prime.update_attributes(params[:print_prime])
        format.html { redirect_to @print_prime, notice: 'Print prime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @print_prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /print_primes/1
  # DELETE /print_primes/1.json
  def destroy
    @print_prime = PrintPrime.find(params[:id])
    @print_prime.destroy

    respond_to do |format|
      format.html { redirect_to print_primes_url }
      format.json { head :no_content }
    end
  end
end
