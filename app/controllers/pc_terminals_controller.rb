class PcTerminalsController < ApplicationController
  before_action :set_pc_terminal, only: [:show, :edit, :update, :destroy]

  # GET /pc_terminals
  # GET /pc_terminals.json
  def index
    @pc_terminals = PcTerminal.page(params[:page])
  end

  # GET /pc_terminals/1
  # GET /pc_terminals/1.json
  def show
  end

  # GET /pc_terminals/new
  def new
    @pc_terminal = PcTerminal.new
  end

  # GET /pc_terminals/1/edit
  def edit
  end

  # POST /pc_terminals
  # POST /pc_terminals.json
  def create
    @pc_terminal = PcTerminal.new(pc_terminal_params)

    respond_to do |format|
      if @pc_terminal.save
        format.html { redirect_to @pc_terminal, notice: 'Pc terminal was successfully created.' }
        format.json { render :show, status: :created, location: @pc_terminal }
      else
        format.html { render :new }
        format.json { render json: @pc_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_terminals/1
  # PATCH/PUT /pc_terminals/1.json
  def update
    respond_to do |format|
      if @pc_terminal.update(pc_terminal_params)
        format.html { redirect_to @pc_terminal, notice: 'Pc terminal was successfully updated.' }
        format.json { render :show, status: :ok, location: @pc_terminal }
      else
        format.html { render :edit }
        format.json { render json: @pc_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_terminals/1
  # DELETE /pc_terminals/1.json
  def destroy
    @pc_terminal.destroy
    respond_to do |format|
      format.html { redirect_to pc_terminals_url, notice: 'Pc terminal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_terminal
      @pc_terminal = PcTerminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_terminal_params
      params.require(:pc_terminal).permit(:name, :manage_id, :rental_status_id, :remark)
    end
end
