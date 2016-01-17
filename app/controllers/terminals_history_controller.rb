class TerminalsHistoryController < ApplicationController
  before_action :set_terminal_historys, only: [:index]
  def index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal_historys
      @terminal = Terminal.find(params[:terminal_id])
      @terminal_historys = @terminal.versions
    end
end
