class TerminalsController < ApplicationController
  before_action :set_terminal, only: [:show, :edit, :update, :destroy]

  # GET /terminals
  # GET /terminals.json
  def index
    @terminals = Terminal.all
  end

  # GET /terminals/1
  # GET /terminals/1.json
  def show
  end

  # GET /terminals/new
  def new
    @terminal = Terminal.new
  end

  # GET /terminals/1/edit
  def edit
  end

  # POST /terminals
  # POST /terminals.json
  def create
    @terminal = Terminal.new(terminal_params)

    respond_to do |format|
      if @terminal.save
        format.html { redirect_to @terminal, notice: 'Terminal was successfully created.' }
        format.json { render :show, status: :created, location: @terminal }
      else
        format.html { render :new }
        format.json { render json: @terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminals/1
  # PATCH/PUT /terminals/1.json
  def update
    respond_to do |format|
      if @terminal.update(terminal_params)
        format.html { redirect_to @terminal, notice: 'Terminal was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminal }
      else
        format.html { render :edit }
        format.json { render json: @terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminals/1
  # DELETE /terminals/1.json
  def destroy
    @terminal.destroy
    respond_to do |format|
      format.html { redirect_to terminals_url, notice: 'Terminal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal
      @terminal = Terminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal_params
      params.require(:terminal).permit(:name, :imei, :os_version, :rental_status_id, :remark)
    end
end
