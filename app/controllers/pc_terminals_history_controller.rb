class PcTerminalsHistoryController < ApplicationController
  before_action :set_pc_terminal_historys, only: [:index]
  def index
  end
  private
    def set_pc_terminal_historys
      @pc_terminal = PcTerminal.find(params[:pc_terminal_id])
      @pc_terminal_historys = @pc_terminal.versions.select{|item| item.event != "create"}
    end
end

